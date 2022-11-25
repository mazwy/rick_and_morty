import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/all_episodes/episodes__list_tile.dart';
import 'package:rick_and_morty/queries.dart';

class EpisodesList extends StatefulWidget {
  const EpisodesList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EpisodesList createState() => _EpisodesList();
}

class _EpisodesList extends State<EpisodesList> {
  late String episode;
  late String name;

  int page = 2;

  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text(
            'Rick and Morty Flutter App',
          ),
        )),
        body:
            Query(
              options: QueryOptions(
                document: gql(allEpisodesQuery)
              ),
              builder: (QueryResult result, {refetch, fetchMore}) {
                if (result.isLoading && result.data == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (result.hasException) {
                  return const Text('\nErrors: \n');
                }

                if (result.data == null && !result.hasException) {
                  return const Text(
                      'Both data and errors are null, this is a known bug after refactoring, you might forget to set Github token');
                }

                List? results = result.data?['episodes']?['results'];

                if (results == null) {
                  return const Text('no results');
                }

                final Map? pageInfo = result.data?['episodes']['info'];
                final String? fetchMoreCursor = pageInfo?['next'];

                FetchMoreOptions nextPage = FetchMoreOptions(
                  variables: {
                    'page' : page
                  },
                  updateQuery: (previousResultData, fetchMoreResultData) {
                    final List<dynamic> moreResult = [
                      ...previousResultData?['episodes']['results'] as List<dynamic>,
                      ...fetchMoreResultData?['episodes']['results'] as List<dynamic>
                    ];

                    fetchMoreResultData?['episodes']['results'] = moreResult;

                    return fetchMoreResultData;
                  },
                );

                // _controller.addListener(() {
                //     if (_controller.position.pixels ==
                //         _controller.position.maxScrollExtent) {
                //       if (!result.isLoading && page <= 3) {
                //         fetchMore!(nextPage);
                //         page++;
                //       }
                //     }
                //   }
                // );

              //   return Expanded(
              //     child: ListView.builder(
              //       controller: _controller,
              //       itemCount: results.length,
              //       itemBuilder: (context, index) {
              //         if (result.isLoading) {
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: const <Widget>[
              //               CircularProgressIndicator(),
              //             ],
              //           );
              //         }
              //         return EpisodeTile(results, index);
              //     }
              //   )
              // );

            return NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollEndNotification 
                  && _controller.position.pixels >= _controller.position.maxScrollExtent && page < 4) {
                    page++;
                    fetchMore!(nextPage);
                }
                return true;
                },
            
            child: ListView.builder(
              controller: _controller,
              itemCount: results.length,
              itemBuilder: (context, index) {
                return EpisodeTile(results, index);
            }));

          }),
        ),
      );
    //);
  }
}

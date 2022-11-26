import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/all_episodes/episode_card.dart';
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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 48, 62),
      appBar: AppBar(
          elevation: 5,
          backgroundColor: const Color.fromARGB(255, 35, 40, 53),
          title: const Center(
            child: Text(
              'Rick and Morty Flutter App',
            ),
          )),
      body: Query(
          options: QueryOptions(
            document: gql(allEpisodesQuery),
          ),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }
            if (result.isLoading || result.data == null) {
              return const Center(child: CircularProgressIndicator());
            }

            FetchMoreOptions nextPage = FetchMoreOptions(
              variables: {'page': page},
              updateQuery: (previousResultData, fetchMoreResultData) {
                final List<dynamic> moreResult = [
                  ...previousResultData?['episodes']['results']
                      as List<dynamic>,
                  ...fetchMoreResultData?['episodes']['results']
                      as List<dynamic>
                ];

                fetchMoreResultData?['episodes']['results'] = moreResult;

                return fetchMoreResultData;
              },
            );

            List? results = result.data?['episodes']?['results'];

            if (results == null) {
              return const Text('no results');
            }

            return NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollEndNotification &&
                      _controller.position.pixels >=
                          _controller.position.maxScrollExtent &&
                      page < 4) {
                    page++;
                    fetchMore!(nextPage);
                  }
                  return true;
                },
                child: ListView.builder(
                    controller: _controller,
                    itemCount: 51,
                    itemBuilder: (context, index) {
                      return EpisodeCard(results: results, index: index);
                    }));
          }),
    );
  }
}

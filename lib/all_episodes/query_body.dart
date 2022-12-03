import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/all_episodes/episode_card.dart';
import 'package:rick_and_morty/queries.dart';

class QueryBody extends StatefulWidget {
  /// This is responsible for main Query as well as pagination and scrolling.
  /// It returns a Query widget.
  /// The query returns a list of episodes.
  const QueryBody({super.key});

  @override
  State<QueryBody> createState() => _QueryBodyState();
}

class _QueryBodyState extends State<QueryBody> {
  int page = 2;
  late String episode;
  late String name;
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
    return Query(
        options: QueryOptions(document: gql(allEpisodesQuery)),
        builder: (QueryResult result, {refetch, fetchMore}) {
          if (result.isLoading && result.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (result.hasException) {
            return Text(result.exception.toString());
          }
          if (result.data == null && !result.hasException) {
            return const Text('null');
          }

          List? results = result.data?['episodes']?['results'];

          if (results == null) {
            return const Text('no results');
          }

          FetchMoreOptions nextPage = FetchMoreOptions(
            variables: {'page': page},
            updateQuery: (previousResultData, fetchMoreResultData) {
              final List<dynamic> moreResult = [
                ...previousResultData?['episodes']['results'] as List<dynamic>,
                ...fetchMoreResultData?['episodes']['results'] as List<dynamic>
              ];

              fetchMoreResultData?['episodes']['results'] = moreResult;

              return fetchMoreResultData;
            },
          );

          /// If the user scrolls to the bottom of the page, the next page is fetched.
          return NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollEndNotification &&
                    _controller.position.pixels >=
                        _controller.position.maxScrollExtent &&
                    page < 4 &&
                    !(results.length > 40)) {
                  fetchMore!(nextPage);
                  page++;
                }
                return true;
              },
              child: ListView.builder(
                  controller: _controller,
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    return EpisodeCard(results: results, index: index);
                  }));
        });
  }
}

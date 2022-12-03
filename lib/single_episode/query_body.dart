import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/queries.dart';
import 'package:rick_and_morty/single_episode/characters__grid_view.dart';

class SingleEpisodeQueryBody extends StatelessWidget {
  /// Provides a body of a single episode screen.
  /// This widget is used in EpisodeDetails widget.
  /// It returns a Query widget.
  /// The query returns a list of characters in the episode.
  /// The list is displayed in a CharactersGridView widget.
  /// The query is defined in queries.dart file.
  final String? id;
  const SingleEpisodeQueryBody({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            document: gql(singleEpisodeQuery), variables: {'id': id}),
        builder: (QueryResult result,
            {Refetch? refetch, FetchMore? fetchMore}) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          List? characters = result.data?['episode']?['characters'];

          if (characters == null) {
            return const Text('no results');
          }

          return CharactersGridView(characters: characters);
        },
      );
  }
}
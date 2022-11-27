import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/queries.dart';
import 'package:rick_and_morty/single_episode/characters__grid_view.dart';

class EpisodeDetails extends StatelessWidget {
  final String? id, episodeTitle, episode;

  const EpisodeDetails({Key? key, this.id, this.episodeTitle, this.episode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 48, 62),
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 35, 40, 53),
        title: Text(
          '${episode!} - ${episodeTitle!}',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Query(
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
      ),
    );
  }
}

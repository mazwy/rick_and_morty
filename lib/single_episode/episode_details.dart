import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/queries.dart';

class EpisodeDetails extends StatelessWidget {
  final String? id, episodeTitle, episode;

  const EpisodeDetails({Key? key, this.id, this.episodeTitle, this.episode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          episodeTitle!,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Query(
        options: QueryOptions(
            document: gql(singleEpisodeQuery), variables: {'id': id}),
        builder: (
          QueryResult result, {
          Refetch? refetch,
          FetchMore? fetchMore,
        }) {
          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator()
            );
          }
          if (result.hasException) {
              return Text(result.exception.toString());
          }
          
          List? characters = result.data?['episode']?['characters'];

          if (characters == null) {
            return const Text('no results');
          }

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20
            ),
            itemCount: characters.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Image.network(characters[index]['image']),
              );
            }
          );
        },
      ),
    );
  }
}

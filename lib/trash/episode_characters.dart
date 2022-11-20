import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/trash/query.dart';
import '../data/character.graphql.dart';
import '../data/episodes.graphql.dart';

final Link apiLink = HttpLink('https://rickandmortyapi.com/graphql');

ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    link: HttpLink('https://rickandmortyapi.com/graphql'),
    cache: GraphQLCache(store: HiveStore()),
  )
);

class EpisodeCharacters  {
  EpisodeCharacters() {
    Query(
      options: QueryOptions(
        document: gql(readEpisodes), // this is the query string you just created
        // ignore: prefer_const_literals_to_create_immutables
        variables: {
          'page': 1,
        },
        pollInterval: const Duration(seconds: 10),
      ),
      // Just like in apollo refetch() could be used to manually trigger a refetch
      // while fetchMore() can be used for pagination purpose
      builder: (QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }) {
        if (result.hasException) {
            return Text(result.exception.toString());
        }

        if (result.isLoading) {
          return const Text('Loading');
        }

        List? repositories = result.data?['viewer']?['repositories']?['nodes'];

        if (repositories == null) {
          return const Text('No repositories');
        }

        return ListView.builder(
          itemCount: repositories.length,
          itemBuilder: (context, index) {
            final repository = repositories[index];

            return Text(repository['name'] ?? '');
        });
      },
    );
  }
}


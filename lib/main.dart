import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/all_episodes/episodes_list.dart';
import 'package:rick_and_morty/queries.dart';

void main() async {
  await initHiveForFlutter();
  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(store: HiveStore()),
        link: apiLink,
      ),
    );

    return GraphQLProvider(
        client: client,
        child: MaterialApp(
            title: 'GraphQL Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const EpisodesList()
            )
            );
  }
}

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final Link apiLink = HttpLink('https://rickandmortyapi.com/graphql');

ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    link: HttpLink('https://rickandmortyapi.com/graphql'),
    cache: GraphQLCache(store: HiveStore()),
  )
);

class EpisodeWidget extends StatefulWidget {
  const EpisodeWidget({super.key});

  @override
  State<EpisodeWidget> createState() => _EpisodeWidgetState();
}

class _EpisodeWidgetState extends State<EpisodeWidget> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Episode: '),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(entries[i]),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/episodes_list.dart';

int page = 1;
int id = 1;

void main() async{
  await initHiveForFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink('https://rickandmortyapi.com/graphql');

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(store: HiveStore()),
        link: httpLink,
      ),
    );

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'GraphQL Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage())
      );
  }
}
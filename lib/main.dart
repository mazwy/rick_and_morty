import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink httpLink = HttpLink(
    'https://rickandmortyapi.com/graphql',
  );

final Link link = httpLink;

ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

void main() async {

  // We're using HiveStore for persistence,
  // so we need to initialize Hive.
  await initHiveForFlutter();

  ValueNotifier<GraphQLClient> client2 = client;  


  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: CacheProvider(
        child: MaterialApp(
          title: 'Startup Name Generator',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.red,
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      )
    );
  }
}

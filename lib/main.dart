import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async{
  await initHiveForFlutter();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink(apiUrl);

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(store: HiveStore()),
        link: httpLink,
      ),
    );

    return MaterialApp(
      home: GraphQLProvider(
        client: client,
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String episode;
  late String name;
  final int length = 51;

  String query = r'''
    query GetEpisodes($page: Int)  {
      episodes (page: $page) {
        results {
          id
          name
          episode
        }
      }
    }
  ''';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(
            'Parsing data using GraphQL',
          ),
        )),
        body: Query(
          options: QueryOptions(
            document: gql(query)
          ),
          builder: (
            QueryResult result, { 
              Refetch? refetch,
              FetchMore? fetchMore,
            }
          ) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }
            if (result.isLoading) {
              return const Text('Loading');
            }
            if (result.data == null) {
              return const Center(
                child: Text(
                  "Loading...",
                  style: TextStyle(
                    fontSize: 20.0
                    ),
                  )
                );
            } else {
              return ListView.builder(
                itemCount: result.data?["episodes"]["results"].length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Center(child: Text(
                      result.data?["episodes"]["results"][index]['name']
                    )),
                    onTap: () => _episodeClicked(),
                  );
                }
              );
            }
          },
        ),
      ),
    );
  }

void _episodeClicked() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Test'),
            ),
            body: ListView(),
          );
        }
      ),
    );
  }
}
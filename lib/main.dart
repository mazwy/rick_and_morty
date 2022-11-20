import 'package:flutter/material.dart';
import 'package:rick_and_morty/constants.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

int page = 1;

String allEpisodesQuery = '''
    query GetEpisodes (\$page: Int) {
      episodes (page: \$page) {
        results {
          id
          name
          episode
        }
      }
    }
''';

int id = 1;

String singleEpisodeQuery = ''' 
  query GetEpisode (\$id: ID!) {
      episode (id: \$id) {
        characters {
          name
      }
    }
  }
'''; 

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

    // return MaterialApp(
    //   home: GraphQLProvider(
    //     client: client,
    //     child: const MyHomePage(),
    //   ),
    // );
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String episode;
  late String name;
  final int length = 51;

  int page = 1;
  final ScrollController _scrollController = ScrollController();

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Parsing data using GraphQL',
            ),
          )
        ),
        body: Query(
          options: QueryOptions(
            document: gql(allEpisodesQuery),
            // ignore: prefer_const_literals_to_create_immutables
            variables: {
              'page' : page,
            }
          ),
          builder: (
            QueryResult result, { 
              Refetch? refetch,
              FetchMore? fetchMore,
            }) {
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
              }

              List? results = result.data?['episodes']?['results'];

              if(results == null) {
                return const Text('no results');
              }

              return ListView.builder(
                itemCount: results.length,
                itemBuilder: (context, index) {
                  final episodeFromList = results[index];
                  
                  return ListTile(
                    title: Center(child: Text(
                      episodeFromList['name']
                      )
                    ),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => EpisodeDetails(
                          id: episodeFromList['id'],
                          episodeTitle: episodeFromList['name'],
                          episode: episodeFromList['episode'],
                      ),
                    )
                  )
                );
              }
              ); 
            },
        ),
      ),
    );
  }
}

class EpisodeDetails extends StatelessWidget {
  final String? id, episodeTitle, episode;

  const EpisodeDetails(
      {Key? key, this.id, this.episodeTitle, this.episode})
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
            document: gql(singleEpisodeQuery),
            variables: {
              'id': id
            }
          ),
          builder: (
            QueryResult result, { 
              Refetch? refetch,
              FetchMore? fetchMore,
            }
          ) {
            List? resultsss = result.data?['episode']?['characters'];
            
            if (resultsss == null) {
                return const Text('no results');
            }

          return ListView.builder(
            itemCount: resultsss.length,
            itemBuilder: (context, index) {
              final episodeDetail = resultsss[index];
                  
              return ListTile(
                title: Center(child: Text(
                  episodeDetail['name']
                )),
              );
            }
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/queries.dart';
import 'package:rick_and_morty/episode_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
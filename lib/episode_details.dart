import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/queries.dart';

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
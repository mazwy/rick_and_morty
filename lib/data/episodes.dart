import 'package:graphql_flutter/graphql_flutter.dart';


const String episodesList = r'''
    query GetEpisodes ($page: Int) {
      episodes (page: $page) {
        info {
          pages
          count
          next
          prev
        }
        results {
          id
          name
          episode
          air_date
          characters {
            id
            name
            image
          }
        }
      }
    }
''';

class Episode {
  final int id;
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters;
  final String url;
  final String created;

  Episode(
    this.id, 
    this.name, 
    this.airDate,
    this.episode, 
    this.characters, 
    this.url, 
    this.created
    );

    factory
}
import 'package:graphql_flutter/graphql_flutter.dart';

/// This is a query for all and single episodes
/// It is used in EpisodesList and SingleEpisodeQueryBody widgets.
/// It returns a list of episodes.

const String allEpisodesQuery = '''
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

/// This is a query for a single episode
/// It is used in SingleEpisodeQueryBody widget.
/// It returns a list of characters in the episode.
/// The list is displayed in a CharactersGridView widget.

const String singleEpisodeQuery = ''' 
  query GetEpisode (\$id: ID!) {
      episode (id: \$id) {
        characters {
          name
          image
      }
    }
  }
''';

/// this is a link to the Rick And Morty GQL API website
/// used in GraphQLProvider widget

final HttpLink apiLink = HttpLink('https://rickandmortyapi.com/graphql');
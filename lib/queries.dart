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

const String singleEpisodeQuery= ''' 
  query GetEpisode (\$id: ID!) {
      episode (id: \$id) {
        characters {
          name
      }
    }
  }
'''; 
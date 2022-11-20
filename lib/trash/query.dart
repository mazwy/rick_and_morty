String readEpisodes = r'''
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

String episodeCharacters = r'''
  query episodeCharacters($episode: [ID!]!) {
 	episodesByIds(ids: $episode) {
    episode
    characters {
      name
      image
    }
	}
}
''';
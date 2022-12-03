import 'package:flutter/material.dart';
import 'package:rick_and_morty/single_episode/episode_details.dart';

class EpisodeTile extends StatelessWidget {
  /// Provides a list tile widget for each episode and returns a ListTile widget.
  /// This widget is used in EpisodeCard widget.
  /// The tile contains episode name, episode number, and air date (from the Card).
  /// When the tile is tapped, it navigates to EpisodeDetails widget.
  final List? results;
  final int index;

  const EpisodeTile(this.results, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    final episodeFromList = results![index];

    return ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        leading: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1.0, color: Colors.white24))),
            child: Text(
              episodeFromList['id'],
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
        title: Text(
          episodeFromList['name'],
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          episodeFromList['episode'],
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(Icons.keyboard_arrow_right,
            color: Colors.white, size: 30.0),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => EpisodeDetails(
                id: episodeFromList['id'],
                episodeTitle: episodeFromList['name'],
                episode: episodeFromList['episode'],
              ),
            )));
  }
}

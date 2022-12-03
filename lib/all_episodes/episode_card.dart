import 'package:flutter/material.dart';
import 'package:rick_and_morty/all_episodes/episodes__list_tile.dart';

class EpisodeCard extends StatelessWidget {
  /// Provides a card widget for each episode and returns a container with EpisodeListTile widget.
  /// This widget is used in EpisodesList widget.
  /// The card contains a Box with a list tile of the episode.
  final List? results;
  final int index;

  const EpisodeCard({super.key, required this.results, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6.0),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(224, 64, 71, 84)),
        child: EpisodeTile(results, index),
      ),
    );
  }
}

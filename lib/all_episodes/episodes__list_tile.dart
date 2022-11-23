import 'package:flutter/material.dart';
import '../single_episode/episode_details.dart';

class EpisodeTile extends StatelessWidget {
  final List? results;
  final int index;

  const EpisodeTile(this.results, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    final episodeFromList = results![index];

    return ListTile(
        title: Center(child: Text(episodeFromList['name'])),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => EpisodeDetails(
                id: episodeFromList['id'],
                episodeTitle: episodeFromList['name'],
                episode: episodeFromList['episode'],
              ),
            )));
  }
}

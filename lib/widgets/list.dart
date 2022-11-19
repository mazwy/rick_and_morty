import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:rick_and_morty/widgets/episode.dart';

class EpisodesListWidget extends StatefulWidget {
  const EpisodesListWidget({super.key});

  @override
  State<EpisodesListWidget> createState() => _EpisodesListWidgetState();
}

class _EpisodesListWidgetState extends State<EpisodesListWidget> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _episodeClicked,
            tooltip: 'clicked',
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: entries.length,
        itemBuilder: (context, int i) {
        return ListTile(
          title: Text(
            entries[i],
          ),
          onTap: () => _episodeClicked(),
          );
        },
      ),
    );
  }

  void _episodeClicked() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Test'),
            ),
            body: ListView(),
          );

          // final divided = tiles.isNotEmpty
          //     ? ListTile.divideTiles(
          //       context: context,
          //       tiles: tiles,
          //     ).toList()
          //   : <Widget>[];

          // return Scaffold(
          //   appBar: AppBar(
          //     title: const Text('Episode: '),
          //   ),
          //   body: ListView(),
          // );
        }
      ),
    );
  }
}
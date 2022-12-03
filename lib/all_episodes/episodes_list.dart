import 'package:flutter/material.dart';
import 'package:rick_and_morty/all_episodes/query_body.dart';

class EpisodesList extends StatefulWidget {
  /// Provides main screen and returns a Scaffold widget of the app.
  /// This widget is used in RickAndMortyApp widget.
  /// It returns a QueryBody widget.
  const EpisodesList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EpisodesList createState() => _EpisodesList();
}

class _EpisodesList extends State<EpisodesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 42, 48, 62),
        appBar: AppBar(
            elevation: 5,
            backgroundColor: const Color.fromARGB(255, 35, 40, 53),
            title: const Center(
              child: Text(
                'Rick and Morty Flutter App',
              ),
            )),
        body: const QueryBody());
  }
}

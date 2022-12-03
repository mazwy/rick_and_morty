import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  /// Provides a card for a character in the episode.
  /// This widget is used in CharactersGridView widget.
  /// It returns a Card widget.
  /// The card contains character image.
  final List? characters;
  final int index;
  const CharacterCard(
      {super.key, required this.characters, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(55)),
            child: GridTile(
                child: FittedBox(
              fit: BoxFit.fill,
              child: Image.network(characters?[index]['image']),
            )),
          )),
    );
  }
}

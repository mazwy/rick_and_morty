import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
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
                header: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.2)
                        ]),
                  ),
                  child: Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Center(
                            child: Text(
                          characters?[index]['name'],
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))
                      ])),
                ),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(characters?[index]['image']),
                )),
          )),
    );
  }
}

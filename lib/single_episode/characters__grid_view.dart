import 'package:flutter/cupertino.dart';
import 'package:rick_and_morty/single_episode/characters_card.dart';

class CharactersGridView extends StatelessWidget {
  /// Provides a grid view of characters in the episode.
  /// This widget is used in SingleEpisodeQueryBody widget.
  /// It returns a GridView widget.
  /// The grid view contains a list of characters in the episode.
  /// Each character is displayed in a CharacterCard widget.
  final List? characters;

  const CharactersGridView({super.key, this.characters});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            maxCrossAxisExtent: 150,
            childAspectRatio: 1),
        itemCount: characters?.length,
        itemBuilder: (context, index) {
          return CharacterCard(characters: characters, index: index);
        });
  }
}

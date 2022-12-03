import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:rick_and_morty/main.dart';
import 'package:rick_and_morty/single_episode/characters__grid_view.dart';
import 'package:rick_and_morty/single_episode/episode_details.dart';

void main() {
  group('Testing App Performance Tests', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Scrolling test', (tester) async {
      await tester.pumpWidget(const RickAndMortyApp());

      final listFinder = find.byType(ListView);

      await binding.watchPerformance(() async {
        await tester.fling(listFinder, const Offset(0, -500), 10000);
        await tester.pumpAndSettle();

        await tester.fling(listFinder, const Offset(0, 500), 10000);
        await tester.pumpAndSettle();
      }, reportKey: 'scrolling_summary');
    });

    testWidgets('click test', (tester) async {
      await tester.pumpWidget(const RickAndMortyApp());
        await tester.pumpAndSettle(const Duration(seconds: 1));

        await tester.tap(find.text('S01E01'));
        await tester.pumpAndSettle(const Duration(seconds: 2));   

        expect(find.byType(EpisodeDetails, skipOffstage: false), findsWidgets);
        expect(find.byType(CharactersGridView), findsWidgets);
    });
  });
}



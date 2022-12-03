import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty/all_episodes/episodes_list.dart';
import 'package:rick_and_morty/all_episodes/query_body.dart';
import 'package:rick_and_morty/main.dart';
import 'package:rick_and_morty/single_episode/episode_details.dart';

/*


    all mock-related things are down below instead of inside helpers.dart
    because for some reason it shows errors 'Method not found' as well as
    'MockGraphQLClient' isn't a type.
    
    
*/

void main() {
  MockGraphQLClient mockGraphQLClient = generateMockGraphQLClient();

  // ignore: no_leading_underscores_for_local_identifiers
  Widget _buildTestScaffold() {
    return GraphQLProvider(
        client: ValueNotifier(mockGraphQLClient),
        child: const MaterialApp(
          home: RickAndMortyApp()
      ),
    );
  }

  group('Query', () {
    testWidgets('displays a loading indicator when query is loading',
        (tester) async {
      final result = generateMockWatchQuery<QueryBody>(mockGraphQLClient);
      when(() => result.isLoading).thenReturn(true);

      await tester.pumpWidget(_buildTestScaffold());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders a message on error', (tester) async {
      final result = generateMockWatchQuery<QueryBody>(mockGraphQLClient);
      when(() => result.isLoading).thenReturn(false);
      when(() => result.hasException).thenReturn(true);

      await tester.pumpWidget(_buildTestScaffold());
      expect(find.byType(Text), findsWidgets);
    });

    testWidgets('renders the appropriate elements (1st screen)', (tester) async {

      final result = generateMockWatchQuery<QueryBody>(mockGraphQLClient);
      when(() => result.isLoading).thenReturn(false);
      when(() => result.hasException).thenReturn(false);
      when(() => result.parsedData).thenReturn(
        const QueryBody(),
      );

      await tester.pumpWidget(_buildTestScaffold());
      await tester.pumpAndSettle(const Duration(seconds: 2));
      
      expect(find.byType(QueryBody), findsOneWidget);
      expect(find.byType(EpisodesList), findsOneWidget);
      // finds nothing because of offstage widgets
      expect(find.byType(EpisodeDetails), findsNothing);

      // doesn't work
      // await tester.pumpAndSettle(const Duration(seconds: 2));
      // await tester.tapAt(const Offset(297.0, 86.0));
      // await tester.pumpAndSettle(const Duration(seconds: 2));
      // expect(find.byType(EpisodeDetails), findsWidgets);

      // expect(find.descendant(of: find.byType(EpisodesList), 
      //   matching: find.byType(Scaffold), skipOffstage: false), 
      //   findsWidgets);
      // // expect(find.descendant(of: find.byType(QueryBody), 
      // //   matching: find.byType(Query), skipOffstage: false), 
      // //   findsWidgets);
      // tester.element(find.byType(QueryBody)).visitChildren((element) => EpisodeCard);

      // expect(find.byType(ListView), findsNothing);
    });
  });
}

MockGraphQLClient generateMockGraphQLClient() {
  final graphQLClient = MockGraphQLClient();
  final queryManager = MockQueryManager();

  when(() => graphQLClient.defaultPolicies).thenReturn(DefaultPolicies());
  when(() => graphQLClient.queryManager).thenReturn(queryManager);

  return graphQLClient;
}

class MockGraphQLClient extends Mock implements GraphQLClient {}

class MockQueryManager extends Mock implements QueryManager {}

MockQueryResult<T> generateMockQuery<T>(MockGraphQLClient graphQLClient) {
  registerFallbackValue(_FakeQueryOptions<T>());

  final result = MockQueryResult<T>();
  when(() => graphQLClient.query<T>(any())).thenAnswer((_) async => result);

  final queryManager = graphQLClient.queryManager;
  when(() => queryManager.query<T>(any())).thenAnswer((_) async => result);

  return result;
}

class MockQueryResult<T> extends Mock implements QueryResult<T> {}

class _FakeQueryOptions<T> extends Fake implements QueryOptions<T> {}

MockQueryResult<T> generateMockWatchQuery<T>(MockGraphQLClient graphQLClient) {
  registerFallbackValue(_FakeWatchQueryOptions<T>());

  final query = MockObservableQuery<T>();
  final result = MockQueryResult<T>();

  when(query.close).thenReturn(QueryLifecycle.closed);
  when(() => query.stream).thenAnswer((_) => Stream.value(result));
  when(() => query.latestResult).thenReturn(result);
  when(
    () => query.onData(
      any(),
    ),
  // ignore: void_checks
  ).thenReturn(() {});
  when(() => graphQLClient.watchQuery<T>(any())).thenReturn(query);

  final queryManager = graphQLClient.queryManager;
  when(() => queryManager.watchQuery<T>(any())).thenReturn(query);

  return result;
}

class _FakeWatchQueryOptions<T> extends Fake implements WatchQueryOptions<T> {}

class MockObservableQuery<T> extends Mock implements ObservableQuery<T> {}

// void main() {
//   group('test', () {
  
//   testWidgets('test1', (WidgetTester tester) async {

//     await tester.pumpWidget(const GraphQLMutationMocker(
//       mockedResult: <String, dynamic>{
//         'data': {
//           'episodes': {
//             'results': [
//               {
//                 'id': '1',
//                 'name': 'Pilot',
//                 'episode': 'S01E01',
//               },
//               {
//                 'id': '2',
//                 'name': 'Lawnmower Dog',
//                 'episode': 'S01E02',
//               },
//               {
//                 'id': '3',
//                 'name': 'Anatomy Park',
//                 'episode': 'S01E03',
//               },
//             ]
//           }
//         },
//       },
//       child: RickAndMortyApp(),
//     ));
//     // Click on button
//     expect(find.text('Pilot'), findsOneWidget);

//     // Check I'm on the right screen
//     expect(find.byType(EpisodesList), findsOneWidget);
//     expect(find.byType(CharactersGridView), findsNothing);
//   });

//   // testWidgets('It should redirect to ThirdScreen', (WidgetTester tester) async {

//     // await tester.pumpWidget(GraphQLMutationMocker(
//     //   mockedResult: <String, dynamic>{
//     //     'data': {
//     //       'bool': false,
//     //     },
//     //   },
//     //   child: FirstScreen(),
//     // ));
//     // // Click on button
//     // await tester.tap(find.text('Button'));
//     // await tester.pumpAndSettle();
    
//     // // Check I'm on the right screen
//     // expect(find.byType(SecondScreen), findsNothing);
//     // expect(find.byType(ThirdScreen), findsOneWidget);
//  // });
// });

// }

// class MockClient extends Mock implements Client {
//   MockClient({
//     required this.mockedResult,
//     this.mockedStatus = 200,
//   });
//   final Map<String, dynamic> mockedResult;
//   final int mockedStatus;

//   @override
//   Future<StreamedResponse> send(BaseRequest request) {
//     return Future<StreamedResponse>.value(
//       StreamedResponse(
//         Stream.value(utf8.encode(jsonEncode(mockedResult))),
//         mockedStatus,
//       ),
//     );
//   }
// }

// class GraphQLMutationMocker extends StatelessWidget {
//   const GraphQLMutationMocker({super.key, 
//     required this.child,
//     this.mockedResult = const {},
//     this.mockedStatus = 200,
//     this.url = 'http://url',
//     this.storagePrefix = 'test',
//   });
//   final Widget child;

//   final Map<String, dynamic> mockedResult;

//   final int mockedStatus;

//   final String url;

//   final String storagePrefix;

//   @override
//   Widget build(BuildContext context) {
//     final mockClient = MockClient(
//       mockedResult: mockedResult,
//       mockedStatus: mockedStatus,
//     );
//     final httpLink = HttpLink(url);
//     final graphQLClient = ValueNotifier(
//       GraphQLClient(
//         cache: GraphQLCache(partialDataPolicy: PartialDataCachePolicy.acceptForOptimisticData),
//         link: HttpLink(url),
//       ),
//     );
//     return GraphQLProvider(
//       client: graphQLClient,
//       child: child,
//     );
//   }
// }

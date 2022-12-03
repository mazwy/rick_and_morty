/*

DOESN'T WORK - episode details is built from context


*/








// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:rick_and_morty/single_episode/episode_details.dart';
// import 'package:rick_and_morty/single_episode/query_body.dart';

// /*
//     all mock-related things are down below instead of inside helpers.dart
//     because for some reason it shows errors 'Method not found' as well as
//     'MockGraphQLClient' isn't a type.
// */
// void main() {
//   const String id = '1';
//   const String episodeTitle = 'Pilot';
//   const String episode = 'S01E01';

//   MockGraphQLClient mockGraphQLClient = generateMockGraphQLClient();
  
//   Widget buildTestEpisodeDetails() {
//     return GraphQLProvider(
//         client: ValueNotifier(mockGraphQLClient),
//         child: const MaterialApp(
//           home: Material(
//             child: EpisodeDetails(id: id, episodeTitle: episodeTitle, episode: episode)
//           ),
//       ),
//     );
//   }

//   group('Query', () {
//     // testWidgets('displays a loading indicator when query is loading',
//     //     (tester) async {
//     //   final result = generateMockWatchQuery<SingleEpisodeQueryBody>(mockGraphQLClient);
//     //   when(() => result.isLoading).thenReturn(true);

//     //   await tester.pumpWidget(buildTestEpisodeDetails());

//     //   expect(find.byType(CircularProgressIndicator), findsOneWidget);
//     // });
//     // testWidgets('displays a loading indicator when query is loading',
//     //     (tester) async {
//     //   final result = generateMockWatchQuery<Query>(mockGraphQLClient);
//     //   when(() => result.isLoading).thenReturn(true);

//     //   await tester.pumpWidget(buildTestEpisodeDetails());

//     //   expect(find.byType(CircularProgressIndicator), findsOneWidget);
//     // });

//     // testWidgets('renders a message on error', (tester) async {
//     //   final result = generateMockWatchQuery<Query>(mockGraphQLClient);
//     //   when(() => result.isLoading).thenReturn(false);
//     //   when(() => result.hasException).thenReturn(true);

//     //   await tester.pumpWidget(buildTestEpisodeDetails());
//     // });

//     testWidgets('renders the appropriate elements (2nd screen)', (tester) async {

//       final result = generateMockQuery<SingleEpisodeQueryBody>(mockGraphQLClient);
//       when(() => result.isLoading).thenReturn(false);
//       when(() => result.hasException).thenReturn(false);
//       when(() => result.parsedData).thenReturn(
//         const SingleEpisodeQueryBody(id: id)
//       );

//       await tester.pumpWidget(buildTestEpisodeDetails());
//     });



//   });
// }




// MockGraphQLClient generateMockGraphQLClient() {
//   final graphQLClient = MockGraphQLClient();
//   final queryManager = MockQueryManager();

//   when(() => graphQLClient.defaultPolicies).thenReturn(DefaultPolicies());
//   when(() => graphQLClient.queryManager).thenReturn(queryManager);

//   return graphQLClient;
// }

// class MockGraphQLClient extends Mock implements GraphQLClient {}

// class MockQueryManager extends Mock implements QueryManager {}

// MockQueryResult<T> generateMockQuery<T>(MockGraphQLClient graphQLClient) {
//   registerFallbackValue(_FakeQueryOptions<T>());

//   final result = MockQueryResult<T>();
//   when(() => graphQLClient.query<T>(any())).thenAnswer((_) async => result);

//   final queryManager = graphQLClient.queryManager;
//   when(() => queryManager.query<T>(any())).thenAnswer((_) async => result);

//   return result;
// }

// class MockQueryResult<T> extends Mock implements QueryResult<T> {}

// class _FakeQueryOptions<T> extends Fake implements QueryOptions<T> {}

// MockQueryResult<T> generateMockWatchQuery<T>(MockGraphQLClient graphQLClient) {
//   registerFallbackValue(_FakeWatchQueryOptions<T>());

//   final query = MockObservableQuery<T>();
//   final result = MockQueryResult<T>();

//   when(query.close).thenReturn(QueryLifecycle.closed);
//   when(() => query.stream).thenAnswer((_) => Stream.value(result));
//   when(() => query.latestResult).thenReturn(result);
//   when(
//     () => query.onData(
//       any(),
//     ),
//   // ignore: void_checks
//   ).thenReturn(() {});
//   when(() => graphQLClient.watchQuery<T>(any())).thenReturn(query);

//   final queryManager = graphQLClient.queryManager;
//   when(() => queryManager.watchQuery<T>(any())).thenReturn(query);

//   return result;
// }

// class _FakeWatchQueryOptions<T> extends Fake implements WatchQueryOptions<T> {}

// class MockObservableQuery<T> extends Mock implements ObservableQuery<T> {}
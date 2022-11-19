import 'package:flutter/material.dart';
import 'package:rick_and_morty/trash/query.dart';
import 'package:rick_and_morty/test.dart';
import 'package:rick_and_morty/widgets/list.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final Link apiLink = HttpLink('https://rickandmortyapi.com/api');

ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    link: HttpLink('https://rickandmortyapi.com/graphql'),
    cache: GraphQLCache(dataIdFromObject: null),
  )
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.red,
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
          ),
          home: const Test(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class Episodes extends StatelessWidget {
//   const Episodes({super.key});

//   @override
//     Widget build(BuildContext context) {
//         return Query(
//             options: QueryOptions(
//                 document: gql(readEpisodes),
//                 // ignore: prefer_const_literals_to_create_immutables
//                 variables: {
//                 'page': 1,
//                 },
//                 pollInterval: const Duration(seconds: 10),
//             ),
//             builder: (QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }) {
//               if (result.hasException) {
//                   return Text(result.exception.toString());
//               }

//               if (result.isLoading) {
//                 return const Text('Loading');
//               }

//               List? repositories = result.data?['viewer']?['repositories']?['nodes'];

//               if (repositories == null) {
//                 return const Text('No repositories');
//               }

//               return ListView.builder(
//                 itemCount: repositories.length,
//                 itemBuilder: (context, index) {
//                   final repository = repositories[index];

//                   return Text(repository['name'] ?? '');
//               });
//             },


//             final Map pageInfo = result.data['search']['pageInfo'];
//             final String fetchMoreCursor = pageInfo['endCursor'];

//             /// **NOTE**: with the addition of strict data structure checking in v4,
//             /// it is easy to make mistakes in writing [updateQuery].
//             ///
//             /// To mitigate this, [FetchMoreOptions.partial] has been provided.
//             FetchMoreOptions opts = FetchMoreOptions(
//               variables: {'cursor': fetchMoreCursor},
//               updateQuery: (previousResultData, fetchMoreResultData) {
//                 // this function will be called so as to combine both the original and fetchMore results
//                 // it allows you to combine them as you would like
//                 final List<dynamic> repos = [
//                   ...previousResultData['search']['nodes'] as List<dynamic>,
//                   ...fetchMoreResultData['search']['nodes'] as List<dynamic>
//                 ];

//                 // to avoid a lot of work, lets just update the list of repos in returned
//                 // data with new data, this also ensures we have the endCursor already set
//                 // correctly
//                 fetchMoreResultData['search']['nodes'] = repos;

//                 return fetchMoreResultData;
//               },
//             );
//           );
//     }
// }
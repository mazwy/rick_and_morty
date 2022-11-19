import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    final Link apiLink = HttpLink('https://rickandmortyapi.com/graphql');

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: HttpLink('https://rickandmortyapi.com/graphql'),
        cache: GraphQLCache(dataIdFromObject: null),
      )
    );
    return GraphQLProvider(
      client: client,
      child: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final String query = r"""
                    query GetContinent($code : String!){
                      continent(code:$code){
                        name
                        countries{
                          name
                        }
                      }
                    }
                  """;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GraphlQL Client"),
      ),
      body: Query(
        options: QueryOptions(
            document: gql(query),
            variables: const <String, dynamic>{"code": "AS"}),


            builder: (QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (result.data == null) {
            return const Text("No Data Found !");
          }
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title:
                Text(result.data!['continent']['countries'][index]['name']),
              );
            },
            itemCount: result.data!['continent']['countries'].length,
          );
        },
      ),
    );
  }
}
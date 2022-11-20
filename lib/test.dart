// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'data/character.graphql.dart';
// import 'data/episode.graphql.dart';
// import 'data/episodes.graphql.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';


// class Test extends HookWidget {
//   final queryResult = Query$GetCharacter$character$episode($__typename: 'episode');

//   @override
//   Widget build(BuildContext context) {
    
//     if (queryResult.result.hasException) {
//       return Text(queryResult.exception.toString());
//     }
//     if (queryResult.result.isLoading) {
//       return Text(text: "LOADING");
//     }
//     final data = queryResult.result.parsedData;

//     return Column(
//       children: data?.viewer.repositores.nodes.map((node) => Text(text: node.name));
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rick_and_morty/trash/episode_characters.dart';
import '../main.dart';

class Episode extends StatelessWidget {
  const Episode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('test')
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ktest/character_screen/presentation/widgets/character_widget.dart';
import 'package:ktest/src/data/models/character.dart';

class SuccessfulWidget extends StatelessWidget {
  final List<Character> characters;
  const SuccessfulWidget({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      cacheExtent: characters.length.toDouble(),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return CharacterWidget(character: characters[index]);
      },
    );
  }
}
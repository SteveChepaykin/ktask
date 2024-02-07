import 'package:flutter/material.dart';
import 'package:ktest/character_screen/presentation/widgets/details_screen.dart';
import 'package:ktest/src/data/models/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;
  const CharacterWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              character: character,
            ),
          ),
        );
      },
      child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: ShapeDecoration(
            color: const Color.fromARGB(120, 204, 255, 255),
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(character.name),
              ),
              Image.network(
                character.image,
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ktest/details_screen//widgets/inforow_widget.dart';
import 'package:ktest/src/models/character.dart';

class DetailsScreen extends StatelessWidget {
  final Character character;
  const DetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.network(character.image),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(character.name),
              const SizedBox(
                height: 10,
              ),
              Text('${character.species} • ${character.gender} • ${character.type}'),
              const SizedBox(
                height: 10,
              ),
              InforowWidget('Status:', character.status),
              const SizedBox(
                height: 10,
              ),
              InforowWidget('Origin:', character.origin),
              const SizedBox(
                height: 10,
              ),
              InforowWidget('Location:', character.location),
              const SizedBox(
                height: 10,
              ),
              InforowWidget('Number of episodes:', character.episodes.length.toString()),
            ],
          ),
        ),
      ),
    );
  }
}

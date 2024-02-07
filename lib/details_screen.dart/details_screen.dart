import 'package:flutter/material.dart';
import 'package:ktest/src/models/character.dart';

class DetailsScreen extends StatelessWidget {
  final Character character;
  const DetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(120, 204, 255, 255),
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
              const SizedBox(height: 10,),
              Text(character.name),
              const SizedBox(height: 10,),
              Text('${character.species} • ${character.gender} • ${character.type}'),
              const SizedBox(height: 10,),
              inforow('Status:', character.status),
              const SizedBox(height: 10,),
              inforow('Origin:', character.origin),
              const SizedBox(height: 10,),
              inforow('Location:', character.location),
            ],
          ),
        ),
      ),
    );
  }

  Widget inforow(String title, String info) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(info),
      ],
    ),
  );
}
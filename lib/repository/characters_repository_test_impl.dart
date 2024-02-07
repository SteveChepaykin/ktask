import 'dart:async';
import 'package:ktest/src/models/character.dart';
import 'package:ktest/repository/characters_repository.dart';

class CharactersTestRepositoryImpl implements CharactersRepository{
  CharactersTestRepositoryImpl();

  @override
  Future<List<Character>?> getCharacters(int page) async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      Character.fromJson({
        'name': 'Character 1',
        'image': '',
        'status': 'Alive',
        'species': 'Human',
        'type': '',
        'gender': 'male',
        'origin': {'name': 'Earth'},
        'location': {'name': 'Africa'},
        'episode': ['1', '2', '3', '5'],
      }),
      Character.fromJson({
        'name': 'Character 2',
        'image': '',
        'status': 'Dead',
        'species': 'Human',
        'type': '',
        'gender': 'male',
        'origin': {'name': 'Earth'},
        'location': {'name': 'Canada'},
        'episode': ['2', '3', '4', '5'],
      }),
      Character.fromJson({
        'name': 'Character 3',
        'image': '',
        'status': 'Dead',
        'species': 'Cat',
        'type': 'allergic',
        'gender': 'female',
        'origin': {'name': 'Earth'},
        'location': {'name': 'USA'},
        'episode': ['1', '2', '5', '8'],
      }),
      Character.fromJson({
        'name': 'Character 4',
        'image': '',
        'status': 'Unknown',
        'species': 'Martian',
        'type': 'extraterrestial',
        'gender': 'unknown',
        'origin': {'name': 'Mars'},
        'location': {'name': 'Marian gap'},
        'episode': ['8', '9', '13', '15'],
      }),
    ];
  }
}

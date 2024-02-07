import 'package:ktest/src/models/character.dart';

abstract class CharactersRepository {
  Future<List<Character>?> getCharacters(int page);
}

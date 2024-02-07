import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final String name;
  final String image;
  late final String status;
  late final String species;
  late final String type;
  late final String gender;
  late final String origin;
  late final String location;
  late final List<String> episodes;

  Character(this.name, this.image, Map<String, dynamic> map) {
    status = map['status'] != null ? map['status'] as String : throw ('Need status in charachter $name');
    species = map['species'] != null ? map['species'] as String : throw ('Need species in charachter $name');
    type = map['type'] != null ? map['type'] as String : throw ('Need type in charachter $name');
    gender = map['gender'] != null ? map['gender'] as String : throw ('Need gender in charachter $name');
    origin = map['origin'] != null ? (map['origin'] as Map<String, dynamic>)['name'] as String : throw ('Need origin in charachter $name');
    location = map['location'] != null ? (map['location'] as Map<String, dynamic>)['name'] as String : throw ('Need location in charachter $name');
    episodes = map['episode'] != null ? (map['episode'] as List<dynamic>).map((e) => e as String).toList() : throw ('Need episodes in charachter $name');
  }

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}

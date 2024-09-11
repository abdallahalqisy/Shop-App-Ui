//3

import 'package:shopapp/core/util/product.dart';
import 'package:shopapp/core/util/web_service.dart';

class CharacterRepo {
  final CharactersWebServices charactersWebServices;

  CharacterRepo(this.charactersWebServices);
  Future<List<Character>> getAllCharacter() async {
    final characters = await charactersWebServices.getAllCharacter();

    return characters
        .map((character) => Character.fromJson(character))
        .toList()
        .toList();
  }
}

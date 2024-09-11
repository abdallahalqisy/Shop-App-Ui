// my_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopapp/core/util/my_repo.dart';
import 'package:shopapp/core/util/product.dart';
import 'package:shopapp/cubit/my_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharacterRepo characterRepo;
  List<Character> characters = [];

  CharactersCubit(this.characterRepo) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    characterRepo.getAllCharacter().then((characters) {
      emit(CharactersLoaded(
          characters)); // Ensure CharactersLoaded is a subtype of CharactersState
      this.characters = characters;
    });
    return characters;
  }
}

import 'package:bloc/bloc.dart';

import '../../data/models/recipe_model.dart';
import '../../data/repositories/recipe_repository.dart';
import 'recipe_events.dart';
import 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvents, RecipeStates> {
  RecipeBloc() : super(RecipeLoadedState(recipies: [])) {
    on<GetRecipies>(_getRecipies);
  }
  final RecipeRepository _repository = RecipeRepository();
  Future<void> _getRecipies(
      GetRecipies event, Emitter<RecipeStates> emit) async {
    List<RecipeModel> recipies = [];
    emit(RecipeLoadingState());
    recipies = await _repository.loadRecipies(event.query);
    emit(
      RecipeLoadedState(recipies: recipies),
    );
  }
}

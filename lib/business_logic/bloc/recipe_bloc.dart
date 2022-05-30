import 'package:bloc/bloc.dart';
import 'recipe_state.dart';
import '../../data/models/recipe_model.dart';
import '../../data/repositories/recipe_repository.dart';
import 'recipe_events.dart';

class RecipeBloc extends Bloc<RecipeEvents, RecipeStates> {
  RecipeBloc() : super(RecipeLoadedState()) {
    on<GetRecipies>(_onGetRecipies);
  }
  final RecipeRepository _repository = RecipeRepository();
  Future<void> _onGetRecipies(
      GetRecipies event, Emitter<RecipeStates> emit) async {
    List<RecipeModel> recipies = await _repository.loadRecipies("chicken");
    emit(
      RecipeLoadedState(recipies: recipies),
    );
  }
}

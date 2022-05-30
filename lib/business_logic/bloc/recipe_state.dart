import 'package:equatable/equatable.dart';
import '../../data/models/recipe_model.dart';

abstract class RecipeStates extends Equatable {
  const RecipeStates();
  @override
  List<Object?> get props => [];
}

class RecipeLoadedState extends RecipeStates {
  final List<RecipeModel> recipies;
  const RecipeLoadedState({
    this.recipies = const <RecipeModel>[],
  });
  @override
  List<Object?> get props => [recipies];
}

class RecipeLoadingState extends RecipeStates {}

class RecipeLoadingFailure extends RecipeStates {}

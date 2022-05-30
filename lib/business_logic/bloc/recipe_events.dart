import 'package:equatable/equatable.dart';
import '../../data/models/recipe_model.dart';

abstract class RecipeEvents extends Equatable {
  const RecipeEvents();
  @override
  List<Object?> get props => [];
}

class GetRecipies extends RecipeEvents {
  final List<RecipeModel> recipies;

  const GetRecipies({
    this.recipies = const <RecipeModel>[],
  });
  @override
  List<Object?> get props => [recipies];
}

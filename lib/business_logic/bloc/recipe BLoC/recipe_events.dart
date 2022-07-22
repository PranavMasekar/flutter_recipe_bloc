import 'package:equatable/equatable.dart';

import '../../../data/models/recipe_model.dart';

abstract class RecipeEvents extends Equatable {
  const RecipeEvents();
  @override
  List<Object?> get props => [];
}

class GetRecipies extends RecipeEvents {
  final List<RecipeModel> recipies;
  String query = "";
  GetRecipies({
    required this.query,
    this.recipies = const <RecipeModel>[],
  }) {
    print("Get Recipe Event Started");
  }
  @override
  List<Object?> get props => [recipies];
}

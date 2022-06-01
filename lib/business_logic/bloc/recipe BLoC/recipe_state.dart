import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import '../../../data/models/recipe_model.dart';

abstract class RecipeStates extends Equatable {
  final TextEditingController searchController = TextEditingController();
  RecipeStates();
  @override
  List<Object?> get props => [];
}

class RecipeLoadedState extends RecipeStates {
  final List<RecipeModel> recipies;
  RecipeLoadedState({
    this.recipies = const <RecipeModel>[],
  });
  @override
  List<Object?> get props => [recipies];
}

class RecipeLoadingState extends RecipeStates {}

class RecipeLoadingFailure extends RecipeStates {}

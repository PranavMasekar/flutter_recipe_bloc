import 'package:dio/dio.dart';

import '../data%20Provider/recipe_service.dart';
import '../models/recipe_model.dart';

class RecipeRepository {
  List<RecipeModel> recipies = [];
  final RecipeService _service = RecipeService();
  // Load All Recipies from service
  Future<List<RecipeModel>> loadRecipies(String query) async {
    Response response = await _service.getRecipe(query);
    Map<String, dynamic> res = response.data;
    for (var element in res["hits"]) {
      recipies.add(RecipeModel.fromJson(element["recipe"]));
    }
    return recipies;
  }
}

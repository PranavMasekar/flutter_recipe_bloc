import 'package:dio/dio.dart';

import '../data%20Provider/recipe_service.dart';
import '../models/recipe_model.dart';

class RecipeRepository {
  final RecipeService _service = RecipeService();
  // Load All Recipies from service
  Future<List<RecipeModel>> loadRecipies(String query) async {
    List<RecipeModel> recipies = [];
    Response response = await _service.getRecipe(query);
    if (response.statusCode != 200) {
      return [];
    }
    Map<String, dynamic> res = response.data;
    for (var element in res["hits"]) {
      recipies.add(RecipeModel.fromJson(element["recipe"]));
    }
    return recipies;
  }
}

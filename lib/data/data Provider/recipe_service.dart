import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';

class RecipeService {
  late Dio dio;
  RecipeService() {
    dio = Dio();
  }
  Future getRecipe(String query) async {
    try {
      var url =
          "https://api.edamam.com/api/recipes/v2?type=public&q=$query&app_id=8825d859&app_key=36baa48af1a2eed0e8099220fd002940";
      final response = await dio.get(url);
      return response;
    } on DioError catch (e) {
      debugPrint("Status Code : ${e.response!.statusCode.toString()}");
      return null;
    }
  }
}

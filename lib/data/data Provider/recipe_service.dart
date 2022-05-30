import 'package:dio/dio.dart';

class RecipeService {
  late Dio dio;
  RecipeService() {
    dio = Dio();
  }
  Future<Response> getRecipe(String query) async {
    var url =
        "https://api.edamam.com/api/recipes/v2?type=public&q=$query&app_id=8825d859&app_key=36baa48af1a2eed0e8099220fd002940";
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      print("Response of Recipe api ${response.statusCode}");
    }
    return response;
  }
}

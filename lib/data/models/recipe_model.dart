class RecipeModel {
  final String reslabel;
  final String resImgresUrl;
  final double resCalories;
  final String resUrl;

  RecipeModel({
    required this.reslabel,
    required this.resImgresUrl,
    required this.resCalories,
    required this.resUrl,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      reslabel: json["label"],
      resImgresUrl: json["image"],
      resCalories: json["calories"],
      resUrl: json["url"],
    );
  }
}

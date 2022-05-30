class RecipeModel {
  final String label;
  final String imgUrl;
  final double calories;
  final String url;

  RecipeModel({
    required this.label,
    required this.imgUrl,
    required this.calories,
    required this.url,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      label: json["label"],
      imgUrl: json["image"],
      calories: json["calories"],
      url: json["url"],
    );
  }
}

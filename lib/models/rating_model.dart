class RatingModel {
  int id;
  String name;
  int time;
  double rating;
  String imageUrl;
  String ratingMessage;

  RatingModel({
    required this.id,
    required this.name,
    required this.time,
    required this.rating,
    required this.imageUrl,
    required this.ratingMessage,
  });
}

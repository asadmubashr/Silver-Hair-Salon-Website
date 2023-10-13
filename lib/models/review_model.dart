class ReviewModel {
  final String imageUrl;
  final String name;
  final int stars; // You can use a rating widget for this
  final String review;

  ReviewModel(
      {required this.imageUrl,
      required this.name,
      required this.stars,
      required this.review});
}

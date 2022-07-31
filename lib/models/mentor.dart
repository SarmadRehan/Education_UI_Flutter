class Mentor {
  final int id;
  final String title;
  final String imageUrl;
  final String category;
  String? reviews;

  Mentor({
    this.reviews,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.category,
  });
}

class Materi {
  final String title;
  final String type;
  final String host;
  final String photo;
  final String? video;

  Materi({
    required this.title,
    required this.type,
    required this.host,
    required this.photo,
    this.video,
  });
}

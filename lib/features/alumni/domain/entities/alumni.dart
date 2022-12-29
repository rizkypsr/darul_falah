class Alumni {
  int id;
  String name;
  String role;
  String photo;
  String? experience;
  List<String>? achivements;
  List<String>? topics;
  Map<String, dynamic>? descriptions;

  Alumni({
    required this.id,
    required this.name,
    required this.role,
    required this.photo,
    this.descriptions,
    this.experience,
    this.achivements,
    this.topics,
  });
}

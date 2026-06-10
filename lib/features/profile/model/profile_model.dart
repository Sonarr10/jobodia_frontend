class ProfileModel {
  const ProfileModel({
    required this.name,
    required this.role,
    required this.coverImageUrl,
    required this.avatarImageUrl,
    required this.about,
    required this.experiences,
  });

  final String name;
  final String role;
  final String coverImageUrl;
  final String avatarImageUrl;
  final String about;
  final List<ExperienceModel> experiences;
}

class ExperienceModel {
  const ExperienceModel({
    required this.company,
    required this.title,
    required this.duration,
    required this.description,
    this.logoImageUrl,
  });

  final String company;
  final String title;
  final String duration;
  final String description;
  final String? logoImageUrl;
}

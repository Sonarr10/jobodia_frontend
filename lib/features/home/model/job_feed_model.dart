class JobFeedModel {
  const JobFeedModel({
    required this.company,
    required this.companyTag,
    required this.matchPercent,
    required this.title,
    required this.level,
    required this.location,
    required this.timeAgo,
    required this.description,
    required this.tags,
    required this.salary,
    required this.proposals,
  });

  final String company;
  final String companyTag;
  final int matchPercent;
  final String title;
  final String level;
  final String location;
  final String timeAgo;
  final String description;
  final List<String> tags;
  final String salary;
  final String proposals;
}

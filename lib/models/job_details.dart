class JobDetails {
  final String company;
  final String title;
  final String logoUrl;
  final String salary;
  final String details;
  final int applicants;
  final String? proficiency;
  final int experience;
  bool isFulltime = true;
  final String? time;
  final String location;

  JobDetails({
    required this.title,
    required this.company,
    required this.logoUrl,
    required this.location,
    required this.salary,
    required this.details,
    required this.applicants,
    required this.experience,
    this.time,
    this.proficiency,
  });
}

class Job {
  final String company;
  final String title;
  final String logoUrl;
  bool isNew = true;
  bool isFulltime = true;
  String? time;
  final String location;

  Job({
    required this.title,
    required this.company,
    required this.logoUrl,
    required this.location,
  });
}

List<Job> jobs = [
  Job(
      title: 'UX Designer',
      company: 'Microsoft',
      logoUrl: 'assets/microsoft.png',
      location: 'Noida, Uttar Pradesh'),
  Job(
      title: 'Software Engineer',
      company: 'Google',
      logoUrl: 'assets/google.png',
      location: 'Bangaluru, Karnataka'),
  Job(
      title: 'UX Researcher',
      company: 'Google',
      logoUrl: 'assets/google.png',
      location: 'Accra,Ghana'),
  Job(
      title: 'Product Designer',
      company: 'Twitter',
      logoUrl: 'assets/Twitter.png',
      location: 'Noida, Uttar Pradesh'),
  Job(
      title: 'UX Engineer',
      company: 'Amazon',
      logoUrl: 'assets/Amazon.jpg',
      location: 'Bangaluru, Karnataka'),
  Job(
      title: 'User Interface Designer',
      company: 'Apple Inc',
      logoUrl: 'assets/Apple.png',
      location: 'Noida, Uttar Pradesh'),
  Job(
      title: 'Systems Architect',
      company: 'Tesla',
      logoUrl: 'assets/Tesla-logo.png',
      location: 'Noida, Uttar Pradesh'),
  Job(
      title: 'Data Analyst',
      company: 'Ebay',
      logoUrl: 'assets/Ebay.png',
      location: 'Noida, Uttar Pradesh'),
  Job(
      title: 'Software Engineer',
      company: 'Meta',
      logoUrl: 'assets/Meta.png',
      location: 'Noida, Uttar Pradesh'),
  Job(
      title: 'Mobile Applications Engineer',
      company: 'Air BnB',
      logoUrl: 'assets/Airbnb.png',
      location: 'Noida, Uttar Pradesh'),
];

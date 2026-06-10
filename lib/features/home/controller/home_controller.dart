import 'package:get/get.dart';
import 'package:jobodia_frontend/features/home/model/job_feed_model.dart';

class HomeController extends GetxController {
  final RxInt selectedTab = 1.obs;

  final jobs = const <JobFeedModel>[
    JobFeedModel(
      company: 'NovaTech Labs',
      companyTag: 'Verified',
      matchPercent: 98,
      title: 'Product Designer - SaaS',
      level: 'Expert',
      location: 'Singapore',
      timeAgo: '2 hours ago',
      description:
          'Design intuitive user experiences for SaaS products, from wireframes to high-fidelity UI. Work closely with product and engineering teams to ship polished interfaces.',
      tags: ['Figma', 'SaaS Design', 'Web Design', 'Mockup'],
      salary: '\$3,500 - \$5,200',
      proposals: '9 proposals',
    ),
    JobFeedModel(
      company: 'Finverse',
      companyTag: 'Featured',
      matchPercent: 92,
      title: 'UI Designer - Fintech App',
      level: 'Intermediate',
      location: 'Singapore',
      timeAgo: '2 hours ago',
      description:
          'Design intuitive user experiences for fintech applications, from wireframes to high-fidelity UI. Work closely with product and engineering teams to ship polished interfaces.',
      tags: ['UI Design', 'Mobile UI', 'Finance', 'Branding'],
      salary: '\$2,800 - \$4,300',
      proposals: '3 proposals',
    ),
    JobFeedModel(
      company: 'GovTech USA',
      companyTag: 'Government',
      matchPercent: 88,
      title: 'UX Researcher',
      level: 'Senior',
      location: 'Washington, DC',
      timeAgo: '5 hours ago',
      description:
          'Shape digital services used by citizens. Collaborate with policy teams, designers, and engineers to improve core government workflows.',
      tags: ['Research', 'Service Design', 'Accessibility'],
      salary: '\$5,100 - \$7,200',
      proposals: '6 proposals',
    ),
    JobFeedModel(
      company: 'Metro Digital',
      companyTag: 'Remote',
      matchPercent: 84,
      title: 'Frontend Engineer',
      level: 'Mid-level',
      location: 'Remote',
      timeAgo: '8 hours ago',
      description:
          'Build responsive job marketplace features, refine interactions, and keep the UI fast and dependable across devices.',
      tags: ['Flutter', 'React', 'UI Systems'],
      salary: '\$4,200 - \$6,000',
      proposals: '11 proposals',
    ),
  ];

  void selectTab(int index) {
    selectedTab.value = index;
  }
}

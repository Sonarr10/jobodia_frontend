import 'package:get/get.dart';
import 'package:jobodia_frontend/features/job_detail/model/job_detail_model.dart';
import 'package:jobodia_frontend/features/job_detail/view/widgets/apply_confirmation_dialog.dart';

class JobDetailController extends GetxController {
  final RxBool isSaved = false.obs;
  final RxBool isAboutRoleExpanded = false.obs;

  JobDetailModel get job => const JobDetailModel(
    title: 'AI Prompt Engineer',
    companyName: 'Meta Corp',
    postedDate: '18 April 2026',
    workMode: 'Remote',
    category: 'Engineer',
    department: 'Frontend',
    heroImageUrl:
        'https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=1200&q=85',
    description:
        'A Frontend Developer is responsible for building the user-facing side of web applications, ensuring that websites and apps are visually appealing, responsive, and easy to use. They collaborate with designers and backend developers to deliver seamless digital products.',
    aboutRole:
        'An AI Engineer is a software professional who builds, deploys, and maintains AI-powered applications, primarily focusing on integrating pre-trained models like LLMs, retrieval-augmented generation, and agentic workflows into production systems. They bridge the gap between data science and software engineering, specializing in API orchestration, evaluation frameworks, and system performance to solve practical business problems.',
    moreJobs: [
      RelatedJobModel(
        title: 'Python Developer',
        workMode: 'Remote',
        department: 'Sales',
      ),
    ],
  );

  void toggleSaved() {
    isSaved.toggle();
  }

  void toggleAboutRole() {
    isAboutRoleExpanded.toggle();
  }

  void shareJob() {
    Get.snackbar('Share', 'Share sheet will be connected here.');
  }

  void applyForJob() {
    Get.dialog<void>(
      ApplyConfirmationDialog(
        title: 'Are you absolutely sure?',
        message:
            'This will apply you to ${job.title} at ${job.companyName}. Please confirm before continuing.',
        onCancel: Get.back,
        onContinue: () {
          Get.back<void>();
          Get.snackbar(
            'Application sent',
            'Your application has been submitted.',
          );
        },
      ),
      barrierDismissible: false,
    );
  }
}

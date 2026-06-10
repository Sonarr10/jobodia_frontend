import 'package:get/get.dart';
import 'package:jobodia_frontend/features/profile/model/profile_model.dart';

class ProfileController extends GetxController {
  final RxBool isAboutExpanded = false.obs;
  final RxBool isSaved = false.obs;

  ProfileModel get profile => const ProfileModel(
    name: 'Jumnert',
    role: 'Cse Student',
    coverImageUrl:
        'https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=1200&q=85',
    avatarImageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/5/56/Donald_Trump_official_portrait.jpg',
    about:
        'A Frontend Developer is responsible for building the user-facing side of web applications, ensuring that websites and apps are visually appealing, responsive, and easy to use. They collaborate with designers and backend developers to deliver seamless digital products.',
    experiences: [
      ExperienceModel(
        company: 'Product Manager',
        title: 'Product Manager',
        duration: '1 Years',
        logoImageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Seal_of_the_United_States_Department_of_Homeland_Security.svg/250px-Seal_of_the_United_States_Department_of_Homeland_Security.svg.png',
        description:
            'A Frontend Developer is responsible for building the user-facing side of web applications.',
      ),
      ExperienceModel(
        company: 'Senior Product Designer',
        title: 'Senior Product Designer',
        duration: '1 Years',
        logoImageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/WhiteHouse_Logo.png/960px-WhiteHouse_Logo.png?utm_campaign=index&utm_content=thumbnail&utm_source=commons.wikimedia.org',
        description:
            'A Frontend Developer is responsible for building the user-facing side of web applications, A Frontend Developer is responsible for building the user-facing side of web applications,',
      ),
      ExperienceModel(
        company: 'ABA Bank',
        title: 'ABA Bank',
        duration: '1 Years',
        logoImageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Seal_of_the_President_of_the_United_States.svg/250px-Seal_of_the_President_of_the_United_States.svg.png',
        description:
            'A Frontend Developer is responsible for building the user-facing side of web applications,',
      ),
      ExperienceModel(
        company: 'Jobodia',
        title: 'Frontend Developer',
        duration: '2 Years',
        description:
            'Built responsive mobile interfaces, reusable components, and product screens for hiring workflows.',
      ),
      ExperienceModel(
        company: 'Swift Bank',
        title: 'UI Designer',
        duration: '8 Months',
        description:
            'Designed account screens, dashboard cards, and clean onboarding flows for mobile users.',
      ),
      ExperienceModel(
        company: 'Freelance',
        title: 'Mobile App Developer',
        duration: '1 Years',
        description:
            'Delivered Flutter screens, fixed layout bugs, and connected app views with backend APIs.',
      ),
    ],
  );

  void toggleAbout() {
    isAboutExpanded.toggle();
  }

  void toggleSaved() {
    isSaved.toggle();
  }

  void shareProfile() {
    Get.snackbar('Share', 'Share profile will be connected here.');
  }
}

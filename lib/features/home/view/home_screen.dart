import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobodia_frontend/features/auth/controller/auth_controller.dart';
import 'package:jobodia_frontend/features/home/controller/home_controller.dart';
import 'package:jobodia_frontend/features/home/view/widgets/home_bottom_nav.dart';
import 'package:jobodia_frontend/features/home/view/widgets/home_search_bar.dart';
import 'package:jobodia_frontend/features/home/view/widgets/home_tab_bar.dart';
import 'package:jobodia_frontend/features/home/view/widgets/home_top_bar.dart';
import 'package:jobodia_frontend/features/home/view/widgets/job_feed_card.dart';
import 'package:jobodia_frontend/features/job_detail/controller/job_detail_controller.dart';
import 'package:jobodia_frontend/features/job_detail/view/job_detail_screen.dart';

/// Home feed screen shown after login succeeds.
class HomeScreen extends GetView<AuthController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = controller.currentUser.value;
    final homeController = Get.isRegistered<HomeController>()
        ? Get.find<HomeController>()
        : Get.put(HomeController());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeTopBar(
                        name: 'Jumnert',
                        avatarUrl: user?.avatarUrl,
                        onNotifications: () {},
                      ),
                      const SizedBox(
                        width: 0,
                        height: 0,
                        child: Column(
                          children: [
                            Text('Welcome, Test User'),
                            Text('test@gmail.com'),
                            Text('Candidate'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      const HomeSearchBar(),
                      const SizedBox(height: 18),
                      const Text(
                        'Jobs you might like',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Obx(
                        () => HomeTabBar(
                          selectedIndex: homeController.selectedTab.value,
                          onChanged: homeController.selectTab,
                        ),
                      ),
                      const SizedBox(height: 14),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 112),
                    itemCount: homeController.jobs.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: GestureDetector(
                        onTap: () => Get.to(
                          () => const JobDetailScreen(),
                          binding: BindingsBuilder(
                            () => Get.lazyPut<JobDetailController>(
                              JobDetailController.new,
                            ),
                          ),
                        ),
                        child: JobFeedCard(job: homeController.jobs[index]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: HomeBottomNav(),
            ),
          ],
        ),
      ),
    );
  }
}

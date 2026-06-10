import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobodia_frontend/core/constants/app_colors.dart';
import 'package:jobodia_frontend/features/auth/controller/auth_controller.dart';
import 'package:jobodia_frontend/features/job_detail/controller/job_detail_controller.dart';
import 'package:jobodia_frontend/features/job_detail/view/job_detail_screen.dart';
import 'package:jobodia_frontend/features/profile/controller/profile_controller.dart';
import 'package:jobodia_frontend/features/profile/view/profile_screen.dart';

/// Simple screen shown after fake login succeeds.
class HomeScreen extends GetView<AuthController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = controller.currentUser.value;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobodia'),
        actions: [
          IconButton(
            tooltip: 'Log out',
            onPressed: controller.logout,
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.work_outline_rounded,
                  color: Colors.white,
                  size: 42,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Welcome, ${user?.name ?? 'User'}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                user?.email ?? '',
                style: const TextStyle(color: AppColors.textSecondary),
              ),
              const SizedBox(height: 4),
              Text(
                user?.role ?? '',
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: () => Get.to(
                  () => const JobDetailScreen(),
                  binding: BindingsBuilder(
                    () => Get.lazyPut<JobDetailController>(
                      JobDetailController.new,
                    ),
                  ),
                ),
                icon: const Icon(Icons.work_outline_rounded),
                label: const Text('Open Job Detail'),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () => Get.to(
                  () => const ProfileScreen(),
                  binding: BindingsBuilder(
                    () => Get.lazyPut<ProfileController>(ProfileController.new),
                  ),
                ),
                icon: const Icon(Icons.person_outline_rounded),
                label: const Text('Open Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

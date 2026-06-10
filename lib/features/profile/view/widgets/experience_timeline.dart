import 'package:flutter/material.dart';
import 'package:jobodia_frontend/features/profile/model/profile_model.dart';

class ExperienceTimeline extends StatelessWidget {
  const ExperienceTimeline({required this.experiences, super.key});

  final List<ExperienceModel> experiences;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Experience',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 12),
        ...List.generate(
          experiences.length,
          (index) => _ExperienceTimelineItem(
            experience: experiences[index],
            isLast: index == experiences.length - 1,
          ),
        ),
      ],
    );
  }
}

class _ExperienceTimelineItem extends StatelessWidget {
  const _ExperienceTimelineItem({
    required this.experience,
    required this.isLast,
  });

  final ExperienceModel experience;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 42,
            child: Column(
              children: [
                _ExperienceLogo(imageUrl: experience.logoImageUrl),
                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 4,
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    experience.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14.5,
                      fontWeight: FontWeight.w800,
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    experience.duration,
                    style: const TextStyle(
                      color: Color(0xFF9B9B9B),
                      fontSize: 12.5,
                      height: 1,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    experience.description,
                    style: const TextStyle(
                      color: Color(0xFF858585),
                      fontSize: 13,
                      height: 1.1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExperienceLogo extends StatelessWidget {
  const _ExperienceLogo({required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return SizedBox(
        width: 36,
        height: 36,
        child: Center(
          child: Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: Color(0xFFB0B0B0),
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
    }

    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xFFEAF2FA),
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFD5DDE5), width: 1),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.network(
        imageUrl!,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.business_rounded, size: 20),
      ),
    );
  }
}

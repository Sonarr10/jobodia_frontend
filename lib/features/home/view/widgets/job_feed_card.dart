import 'package:flutter/material.dart';
import 'package:jobodia_frontend/features/home/model/job_feed_model.dart';

class JobFeedCard extends StatelessWidget {
  const JobFeedCard({required this.job, super.key});

  final JobFeedModel job;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFF0F0F0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                job.company,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF6D6D6D),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 6),
              const Icon(
                Icons.verified_rounded,
                color: Color(0xFF4E79E7),
                size: 15,
              ),
              const Spacer(),
              const Icon(
                Icons.bookmark_border_rounded,
                size: 18,
                color: Color(0xFF8A8A8A),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            job.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _MetaPill(
                icon: Icons.wifi_rounded,
                label: job.level,
                color: const Color(0xFFF4EFFF),
              ),
              const SizedBox(width: 8),
              _MetaPill(
                icon: Icons.location_on_rounded,
                label: job.location,
                color: const Color(0xFFEAF4FF),
              ),
              const SizedBox(width: 8),
              _MetaPill(
                icon: Icons.access_time_rounded,
                label: job.timeAgo,
                color: const Color(0xFFF1F2FF),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            job.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF7B7B7B),
              height: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: job.tags
                .map(
                  (tag) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      tag,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF6D6D6D),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(
                job.salary,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              Text(
                job.proposals,
                style: const TextStyle(fontSize: 13, color: Color(0xFF8A8A8A)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MetaPill extends StatelessWidget {
  const _MetaPill({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: const Color(0xFF5D5D5D)),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 11.5, color: Color(0xFF5D5D5D)),
          ),
        ],
      ),
    );
  }
}

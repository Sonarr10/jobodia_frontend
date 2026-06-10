import 'package:flutter/material.dart';

class ProfileIdentityHeader extends StatelessWidget {
  const ProfileIdentityHeader({
    required this.name,
    required this.role,
    required this.avatarUrl,
    super.key,
  });

  final String name;
  final String role;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4),
          ),
          child: ClipOval(
            child: Image.network(
              avatarUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: const Color(0xFFE9EEF4),
                child: const Icon(Icons.person_rounded, size: 50),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                role,
                style: const TextStyle(color: Color(0xFF8D8D8D), fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ProfileAboutSection extends StatelessWidget {
  const ProfileAboutSection({
    required this.about,
    required this.isExpanded,
    required this.onReadMore,
    super.key,
  });

  final String about;
  final bool isExpanded;
  final VoidCallback onReadMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About me',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 4),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: about),
              if (!isExpanded)
                WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: GestureDetector(
                    onTap: onReadMore,
                    child: const Text(
                      '...show more',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          maxLines: isExpanded ? null : 4,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.clip,
          style: const TextStyle(
            color: Color(0xFF858585),
            fontSize: 13,
            height: 1.1,
          ),
        ),
        if (isExpanded) ...[
          const SizedBox(height: 4),
          GestureDetector(
            onTap: onReadMore,
            child: const Text(
              'Show less',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ],
    );
  }
}

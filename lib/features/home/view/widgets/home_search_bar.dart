import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 46,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFE6E6E6)),
            ),
            child: const Row(
              children: [
                Icon(Icons.search_rounded, color: Color(0xFF8C8C8C)),
                SizedBox(width: 10),
                Text(
                  'Search..',
                  style: TextStyle(color: Color(0xFF8C8C8C), fontSize: 14),
                ),
                Spacer(),
                Icon(
                  Icons.shortcut_rounded,
                  size: 18,
                  color: Color(0xFF8C8C8C),
                ),
                SizedBox(width: 4),
                Text(
                  'K',
                  style: TextStyle(color: Color(0xFF8C8C8C), fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: const Color(0xFF2F4250),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.filter_alt_rounded, color: Colors.white),
        ),
      ],
    );
  }
}

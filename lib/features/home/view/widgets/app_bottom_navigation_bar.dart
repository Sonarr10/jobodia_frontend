import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        child: GlassBottomBar(
          selectedIndex: selectedIndex,
          onTabSelected: onDestinationSelected,
          horizontalPadding: 12,
          verticalPadding: 10,
          barHeight: 64,
          iconSize: 23,
          labelFontSize: 11,
          selectedIconColor: Colors.black,
          unselectedIconColor: const Color(0xFF44484C),
          indicatorColor: Colors.white.withValues(alpha: 0.86),
          quality: GlassQuality.standard,
          tabs: const [
            GlassBottomBarTab(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            GlassBottomBarTab(
              icon: Icon(Icons.layers_outlined),
              activeIcon: Icon(Icons.layers_rounded),
              label: 'CV',
            ),
            GlassBottomBarTab(
              icon: Icon(Icons.chat_bubble_outline),
              activeIcon: Icon(Icons.chat_bubble_rounded),
              label: 'Chat',
            ),
            GlassBottomBarTab(
              icon: Icon(Icons.search_rounded),
              activeIcon: Icon(Icons.search_rounded),
              label: 'Search',
            ),
          ],
        ),
      ),
    );
  }
}

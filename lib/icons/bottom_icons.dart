import 'package:flutter/material.dart';

class BottomIcon {
  final IconData selected, unselected;
  BottomIcon({required this.selected, required this.unselected});
}
List<BottomIcon> bottomIcon = [
  BottomIcon(selected: Icons.home_filled, unselected: Icons.home_outlined),
  BottomIcon(
      selected: Icons.chat_bubble, unselected: Icons.chat_bubble_outline),
  BottomIcon(selected: Icons.explore, unselected: Icons.explore_outlined),
  BottomIcon(selected: Icons.person, unselected: Icons.person_outline),
];
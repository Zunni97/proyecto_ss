import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ss2025/colors.dart';


class BottomCustomNavigationBar extends StatelessWidget {
  const BottomCustomNavigationBar({super.key, required this.onTabChange});
  final void Function(int) onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: GNav(
        onTabChange: onTabChange,
        mainAxisAlignment: MainAxisAlignment.center,
        color: AppColors.lightBlue,
        activeColor: AppColors.primary,
        tabBorderRadius: 20,
        tabs: [
          GButton(
            icon: Icons.business_center,
            text: 'Dual',
          ),
          GButton(
            icon: Icons.miscellaneous_services,
            text: 'Servicio Social',
          ),
          GButton(
            icon: Icons.business_sharp,
            text: 'Residencias',
          ),
        ],
      ),
    );
  }
}

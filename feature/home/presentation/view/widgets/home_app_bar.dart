import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              //TODO implement notification screen
            },
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 28,
            ),
          ),

          const Text(
            'ESH7ENLI',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: AppColors.primaryBlue,
              letterSpacing: 1.5,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black, size: 28),
          ),
        ],
      ),
    );
  }
}

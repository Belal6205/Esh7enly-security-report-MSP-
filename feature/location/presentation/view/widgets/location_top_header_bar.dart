import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LocationTopHeaderBar extends StatelessWidget {
  final VoidCallback? onNextPressed;

  const LocationTopHeaderBar({super.key, this.onNextPressed});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(
              left: 28.0,
              right: 6.0,
              top: 6.0,
              bottom: 6.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: onNextPressed,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      size: 20,
                      color: Color(0xFF1E2B45),
                    ),
                  ),
                ),
                const SizedBox(width: 20),

                const Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'serif',
                    color: AppColors.primaryBlue,
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

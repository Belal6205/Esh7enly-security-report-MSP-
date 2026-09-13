import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SiteConfirmationButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SiteConfirmationButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          foregroundColor: const Color(0xFF0D1B2A),
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Site confirmation',
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.check_circle, color: AppColors.textWhite, size: 20),
          ],
        ),
      ),
    );
  }
}

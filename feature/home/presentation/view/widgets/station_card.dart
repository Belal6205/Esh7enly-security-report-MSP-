import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class StationCard extends StatelessWidget {
  final String title;
  final String distance;
  final bool isFast;
  final String status;

  const StationCard({
    super.key,
    required this.title,
    required this.distance,
    required this.isFast,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryBlue,
                            ),
                          ),
                          if (isFast)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEFF5C8),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    'Fast ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Icon(
                                    Icons.bolt,
                                    size: 14,
                                    color: Colors.black87,
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        distance,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE8F3F1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.turn_right,
                              color: Color(0xFF007A5E),
                              size: 20,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            status,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4A5568),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.ev_station,
                            color: AppColors.primaryBlue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(width: 6, color: AppColors.primaryBlue),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/router/routes_name.dart';
import 'station_card.dart';

class NearbyStationsSection extends StatelessWidget {
  const NearbyStationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFF2F4F7),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Center(
            child: Container(
              width: 48,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'nearby stations',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: 'serif',
                color: AppColors.primaryBlue,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: [
                StationCard(
                  title: 'The Red Sea Coasts',
                  distance: '120 km available',
                  isFast: true,
                  status: 'Available now',
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    context.push(RoutesName.location);
                  },
                  child: StationCard(
                    title: 'The North Coast',
                    distance: '221 km available',
                    isFast: true,
                    status: 'Available now',
                  ),
                ),

                const SizedBox(height: 16),
                const StationCard(
                  title: 'El Ain Sokhna',
                  distance: '133 km available',
                  isFast: true,
                  status: 'Available now',
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

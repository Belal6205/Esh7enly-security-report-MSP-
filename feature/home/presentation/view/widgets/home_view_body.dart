import 'package:flutter/material.dart';
import '../../../../../core/theme/app_colors.dart';
import 'home_app_bar.dart';
import 'search_bar_widget.dart';
import 'action_buttons_row.dart';
import 'nearby_stations_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        HomeAppBar(),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Charge your car here',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: AppColors.primaryBlue,
            ),
          ),
        ),
        SizedBox(height: 16),
        SearchBarWidget(),
        SizedBox(height: 24),
        ActionButtonsRow(),
        SizedBox(height: 32),
        Expanded(child: NearbyStationsSection()),
      ],
    );
  }
}

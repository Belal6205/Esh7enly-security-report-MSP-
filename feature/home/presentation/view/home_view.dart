import 'package:flutter/material.dart';
import 'widgets/home_view_body.dart';
import 'widgets/custom_bottom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: HomeViewBody(),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

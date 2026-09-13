import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/styles/app_assets.dart';
import 'package:flutter_svg/svg.dart';

class LocationMapBackground extends StatelessWidget {
  const LocationMapBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SvgPicture.asset(
        AppAssets.mapBackground,
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}

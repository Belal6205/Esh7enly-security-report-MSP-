import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esh7enly_app/core/router/routes_name.dart';
import 'location_map_background.dart';
import 'location_top_header_bar.dart';
import 'location_marker_widget.dart';
import 'station_details_card.dart';

class LocationViewBody extends StatelessWidget {
  const LocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const LocationMapBackground(),
        Positioned(
          top: 16,
          left: 16,
          right: 16,
          child: LocationTopHeaderBar(
            onNextPressed: () {
              context.push(RoutesName.selectCar);
            },
          ),
        ),
        const Positioned(
          top: 260,
          left: 0,
          right: 0,
          child: Center(child: LocationMarkerWidget()),
        ),
        Positioned(
          bottom: 24,
          left: 16,
          right: 16,
          child: StationDetailsCard(
            onConfirmPressed: () {
              context.push(RoutesName.payment);
            },
          ),
        ),
      ],
    );
  }
}

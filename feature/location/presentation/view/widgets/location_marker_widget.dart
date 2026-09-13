import 'package:flutter/material.dart';

class LocationMarkerWidget extends StatelessWidget {
  const LocationMarkerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            color: const Color(0xFF00E676).withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              color: Color(0xFF00E676),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x4000E676),
                  blurRadius: 12,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Icon(
              Icons.ev_station_rounded,
              color: Color(0xFF0D1B2A),
              size: 26,
            ),
          ),
        ),
        Container(
          width: 3,
          height: 18,
          decoration: BoxDecoration(
            color: const Color(0xFF1E2B45),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}

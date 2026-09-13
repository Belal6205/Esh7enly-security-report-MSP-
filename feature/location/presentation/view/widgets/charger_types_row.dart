import 'package:flutter/material.dart';
import 'charger_type_badge.dart';

class ChargerTypesRow extends StatelessWidget {
  const ChargerTypesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: ChargerTypeBadge(
            icon: Icons.bolt_outlined,
            title: 'Type 2 • 22kW',
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: ChargerTypeBadge(
            icon: Icons.power_outlined,
            title: 'CCS2 • 150kW',
          ),
        ),
      ],
    );
  }
}

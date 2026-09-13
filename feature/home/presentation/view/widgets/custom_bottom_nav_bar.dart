import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esh7enly_app/core/router/routes_name.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomNavBar({super.key, this.selectedIndex = 0});

  static const List<_NavItemData> _items = [
    _NavItemData(icon: Icons.home, label: 'Home', route: RoutesName.home),
    _NavItemData(
      icon: Icons.map_outlined,
      label: 'Map',
      route: RoutesName.location,
    ),
    _NavItemData(
      icon: Icons.ev_station_outlined,
      label: 'sessions',
      route: RoutesName.sessions,
    ),
    _NavItemData(
      icon: Icons.account_balance_wallet_outlined,
      label: 'Wallet',
      route: RoutesName.wallet,
    ),
    _NavItemData(
      icon: Icons.person_outline,
      label: 'profil',
      route: RoutesName.profile,
    ),
  ];

  void _onItemTapped(BuildContext context, int index) {
    if (index == selectedIndex) return;
    final route = _items[index].route;
    if (route != null) {
      context.go(route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_items.length, (index) {
              return _BottomNavItem(
                icon: _items[index].icon,
                label: _items[index].label,
                isSelected: index == selectedIndex,
                onTap: () => _onItemTapped(context, index),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _NavItemData {
  final IconData icon;
  final String label;
  final String? route;

  const _NavItemData({
    required this.icon,
    required this.label,
    required this.route,
  });
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _BottomNavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? AppColors.primaryBlue : Colors.black54;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

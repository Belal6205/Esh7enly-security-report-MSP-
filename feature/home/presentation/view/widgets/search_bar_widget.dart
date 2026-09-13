import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(24),
        ),
        child: const TextField(
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            icon: Icon(Icons.search, color: Colors.black87),
            hintText: 'Search for a station or city',
            hintStyle: TextStyle(color: Colors.black54, fontSize: 14),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

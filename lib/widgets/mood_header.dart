import 'package:flutter/material.dart';

class MoodHeader extends StatelessWidget {
  const MoodHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Mood Tracker',
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Text(
          'How are you feeling today?',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MoodButton extends StatelessWidget {
  final String mood;
  final Color color;
  final VoidCallback onTap;

  const MoodButton({
    super.key,
    required this.mood,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,

      style: ElevatedButton.styleFrom(
        backgroundColor: color.withOpacity(0.15),
        foregroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

        elevation: 0,
      ),

      child: Text(
        mood,

        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

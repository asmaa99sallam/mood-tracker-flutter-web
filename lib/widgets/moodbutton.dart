import 'package:flutter/material.dart';
import 'mood_face.dart';

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
    return InkWell(
      borderRadius: BorderRadius.circular(24),

      onTap: onTap,

      child: Container(
        width: 170,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),

        decoration: BoxDecoration(
          color: color.withOpacity(0.12),
          borderRadius: BorderRadius.circular(24),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            MoodFace(mood: mood, color: color, size: 90),

            const SizedBox(height: 18),

            Text(
              mood,

              style: TextStyle(
                color: color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

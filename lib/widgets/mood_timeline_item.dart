import 'package:flutter/material.dart';
import '../models/mood_entry.dart';
import 'mood_face.dart';

class MoodTimelineItem extends StatelessWidget {
  final MoodEntry moodEntry;
  final Color moodColor;

  const MoodTimelineItem({
    super.key,
    required this.moodEntry,
    required this.moodColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 16),

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: moodColor.withOpacity(0.12),
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            moodEntry.mood,

            style: TextStyle(
              color: moodColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 14),

          MoodFace(mood: moodEntry.mood, color: moodColor, size: 60),

          const SizedBox(height: 14),

          Text(
            "${moodEntry.date.day}/${moodEntry.date.month}",

            style: const TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

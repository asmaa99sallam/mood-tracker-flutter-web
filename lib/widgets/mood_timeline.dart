import 'package:flutter/material.dart';
import '../models/mood_entry.dart';
import 'mood_timeline_item.dart';

class MoodTimeline extends StatelessWidget {
  final List<MoodEntry> moods;

  const MoodTimeline({super.key, required this.moods});

  Color _getMoodColor(String mood) {
    switch (mood) {
      case 'Happy':
        return Colors.green;

      case 'Neutral':
        return Colors.orange;

      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (moods.isEmpty) {
      return Container(
        height: 170,

        alignment: Alignment.center,

        child: const Text(
          "No moods added yet",
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      );
    }

    return SizedBox(
      height: 180,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: moods.length,

        itemBuilder: (context, index) {
          final moodEntry = moods[index];

          return MoodTimelineItem(
            moodEntry: moodEntry,
            moodColor: _getMoodColor(moodEntry.mood),
          );
        },
      ),
    );
  }
}

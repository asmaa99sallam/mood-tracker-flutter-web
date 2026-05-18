import 'package:flutter/material.dart';
import '../models/mood_entry.dart';
import 'mood_face.dart';

class MoodTimelineItem extends StatefulWidget {
  final MoodEntry moodEntry;
  final Color moodColor;

  const MoodTimelineItem({
    super.key,
    required this.moodEntry,
    required this.moodColor,
  });

  @override
  State<MoodTimelineItem> createState() => _MoodTimelineItemState();
}

class _MoodTimelineItemState extends State<MoodTimelineItem> {
  double scale = 1;

  void animateCard() async {
    setState(() {
      scale = 1.1;
    });

    await Future.delayed(const Duration(milliseconds: 150));

    setState(() {
      scale = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: animateCard,

      child: AnimatedScale(
        duration: const Duration(milliseconds: 200),

        scale: scale,

        child: Container(
          width: 120,
          margin: const EdgeInsets.only(right: 10),

          padding: const EdgeInsets.all(10),

          decoration: BoxDecoration(
            color: widget.moodColor.withOpacity(0.12),
            borderRadius: BorderRadius.circular(24),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.moodEntry.mood,
                style: TextStyle(
                  color: widget.moodColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: Center(
                  child: MoodFace(
                    mood: widget.moodEntry.mood,
                    color: widget.moodColor,
                    size: 42,
                  ),
                ),
              ),

              Text(
                "${widget.moodEntry.date.day}/${widget.moodEntry.date.month}",
                style: const TextStyle(color: Colors.black45, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

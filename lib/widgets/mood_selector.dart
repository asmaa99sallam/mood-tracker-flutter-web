import 'package:flutter/material.dart';
import 'moodbutton.dart';

class MoodSelector extends StatelessWidget {
  final void Function(String mood) onMoodSelected;

  const MoodSelector({super.key, required this.onMoodSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MoodButton(
          mood: 'Happy',
          color: Colors.green,
          onTap: () => onMoodSelected('Happy'),
        ),
        const SizedBox(width: 16),
        MoodButton(
          mood: 'Neutral',
          color: Colors.orange,
          onTap: () => onMoodSelected('Neutral'),
        ),
        const SizedBox(width: 16),
        MoodButton(
          mood: 'Sad',
          color: Colors.red,
          onTap: () => onMoodSelected('Sad'),
        ),
      ],
    );
  }
}

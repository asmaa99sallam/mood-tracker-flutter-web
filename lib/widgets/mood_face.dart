import 'package:flutter/material.dart';
import '../painters/mood_face_painter.dart';

class MoodFace extends StatelessWidget {
  final String mood;
  final Color color;
  final double size;

  const MoodFace({
    super.key,
    required this.mood,
    required this.color,
    this.size = 120,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: MoodFacePainter(mood: mood, color: color),
    );
  }
}

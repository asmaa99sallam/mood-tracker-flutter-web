import 'package:flutter/material.dart';

class MoodFacePainter extends CustomPainter {
  final String mood;
  final Color color;

  MoodFacePainter({required this.mood, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final facePaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final eyePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;

    final mouthPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);

    // face
    canvas.drawCircle(center, 50, facePaint);

    // left eye
    canvas.drawCircle(Offset(center.dx - 18, center.dy - 10), 4, eyePaint);

    // right eye
    canvas.drawCircle(Offset(center.dx + 18, center.dy - 10), 4, eyePaint);

    // mouth
    if (mood == 'Happy') {
      canvas.drawArc(
        Rect.fromCenter(
          center: Offset(center.dx, center.dy + 10),
          width: 40,
          height: 25,
        ),
        0,
        3.14,
        false,
        mouthPaint,
      );
    } else if (mood == 'Neutral') {
      canvas.drawLine(
        Offset(center.dx - 15, center.dy + 20),
        Offset(center.dx + 15, center.dy + 20),
        mouthPaint,
      );
    } else {
      canvas.drawArc(
        Rect.fromCenter(
          center: Offset(center.dx, center.dy + 35),
          width: 40,
          height: 25,
        ),
        3.14,
        3.14,
        false,
        mouthPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

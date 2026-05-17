import 'package:flutter/material.dart';
import '../models/mood_entry.dart';

class MoodViewModel extends ChangeNotifier {
  final List<MoodEntry> moods = [];

  void addMood(String mood) {
    moods.insert(0, MoodEntry(mood: mood, date: DateTime.now()));

    notifyListeners();
  }
}

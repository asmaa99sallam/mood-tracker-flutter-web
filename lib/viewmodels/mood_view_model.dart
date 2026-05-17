import 'package:flutter/material.dart';
import '../models/mood_entry.dart';

class MoodViewModel extends ChangeNotifier {
  final List<MoodEntry> _moods = [];
  List<MoodEntry> get moods => _moods;

  void addMood(String mood) {
    _moods.insert(0, MoodEntry(mood: mood, date: DateTime.now()));

    if (_moods.length > 7) {
      _moods.removeLast();
    }

    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import '../viewmodels/mood_view_model.dart';
import '../widgets/mood_header.dart';
import '../widgets/mood_selector.dart';

class MoodHomeView extends StatefulWidget {
  const MoodHomeView({super.key});

  @override
  State<MoodHomeView> createState() => _MoodHomeViewState();
}

class _MoodHomeViewState extends State<MoodHomeView> {
  final MoodViewModel viewModel = MoodViewModel();

  void _addMood(String mood) {
    setState(() {
      viewModel.addMood(mood);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f8fc),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MoodHeader(),
              const SizedBox(height: 40),
              MoodSelector(onMoodSelected: _addMood),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StoryView extends StatefulWidget {
  const StoryView({Key? key}) : super(key: key);

  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'this would stroy view',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    );
  }
}

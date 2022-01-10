import 'package:flutter/material.dart';

class NewsView extends StatefulWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'this would be notice page',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    );
  }
}

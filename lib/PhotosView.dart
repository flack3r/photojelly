import 'package:flutter/material.dart';

class PhotosView extends StatefulWidget {
  const PhotosView({Key? key}) : super(key: key);

  @override
  _PhotosViewState createState() => _PhotosViewState();
}

class _PhotosViewState extends State<PhotosView> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'load photos or sync photos',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    );
  }
}

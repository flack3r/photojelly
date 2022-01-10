import 'package:flutter/material.dart';
import 'package:photojelly/MapView.dart';
import 'package:photojelly/NewsView.dart';
import 'package:photojelly/PhotosView.dart';
import 'package:photojelly/StoryView.dart';
import 'package:photojelly/main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List _widgetOptions = [
    const MapView(),
    const PhotosView(),
    const StoryView(),
    const NewsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PACKAGE_NAME),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex, //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'Photos',
            icon: Icon(Icons.photo_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Story',
            icon: Icon(Icons.history_rounded),
          ),
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
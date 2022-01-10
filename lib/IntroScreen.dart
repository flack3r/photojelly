import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "안녕하세요!",
        styleTitle:
        TextStyle(color: Color(0xff7FFFD4), fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
        description: "포토젤리와 함께 저장된 사진을 지도 스토리로 만들어 추억을 간직하세요",
        styleDescription:
        TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Raleway'),
        backgroundImage: "images/welcome.png",
      ),
    );
    slides.add(
      Slide(
        title: "팁~",
        description: "만들 예정음",
        backgroundColor: Color(0xff203152),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    Navigator.pushNamed(context, '/main');
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,
      onDonePress: onDonePress,
    );
  }
}

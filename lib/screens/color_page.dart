import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/models.dart';

class color_page extends StatelessWidget {
  const color_page({super.key});

  final List<models> family = const [
    models(
        Image: 'assets/images/colors/color_black.png',
        jpName: 'burakku',
        enName: 'black',
        sound: 'black.wav'),
    models(
        Image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'brown',
        sound: 'brown.wav'),
    models(
        Image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow',
        sound: 'dusty yellow.wav'),
    models(
        Image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray',
        sound: 'gray.wav'),
    models(
        Image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'green',
        sound: 'green.wav'),
    models(
        Image: 'assets/images/colors/color_red.png',
        jpName: 'aka',
        enName: 'red',
        sound: 'red.wav'),
    models(
        Image: 'assets/images/colors/color_black.png',
        jpName: 'burakku',
        enName: 'black',
        sound: 'black.wav'),
    models(
        Image: 'assets/images/colors/color_white.png',
        jpName: 'shirori',
        enName: 'white',
        sound: 'white.wav'),
    models(
        Image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green',
        sound: 'green.wav'),
    models(
        Image: 'assets/images/colors/yellow.png',
        jpName: 'Aka',
        enName: 'yellow',
        sound: 'yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (BuildContext context, int index) {
          return item(
            number: family[index],
            color: Color(0xff79359f),
            itemtype: 'colors',
          );
        },
      ),
    );
  }
}

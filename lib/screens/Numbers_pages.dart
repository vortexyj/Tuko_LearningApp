import 'package:flutter/material.dart';
import 'package:tukoapp/components/item.dart';

import '../models/models.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<models> numbers = const [
    models(
        Image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'number_one_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        sound: 'number_two_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        sound: 'number_three_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        sound: 'number_four_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        sound: 'number_five_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
        sound: 'number_six_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven',
        sound: 'number_seven_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'number_eight_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'nine',
        sound: 'number_nine_sound.mp3'),
    models(
        Image: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'ten',
        sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return item(
            number: numbers[index],
            color: Color(0xffef9235),
            itemtype: 'numbers',
          );
        },
      ),
    );
  }

  // List<Widget> getList(List<models> numbers) {
  //   List<Widget> itemslist = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemslist.add(item(
  //         number: numbers[i], color: Color(0xffef9235), itemtype: 'numbers'));
  //   }
  //   return itemslist;
  // }
}

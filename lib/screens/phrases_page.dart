import 'package:tukoapp/models/phrases.dart';
import 'package:flutter/material.dart';

import '../components/phrasesitem.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<phrases> phrase = const [
    phrases(
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: 'dont forget to subscribe',
        sound: 'dont_forget_to_subscribe.wav'),
    phrases(
        jpName: 'Watashi wa puroguramingu daisukidesu',
        enName: 'i love  programming',
        sound: 'i_love_programming.wav'),
    phrases(
        jpName: 'Puroguramingu wa kantandesu ',
        enName: 'programming is easy',
        sound: 'programming_is_easy.wav'),
    phrases(
        jpName: 'Doko ni iku no',
        enName: 'where are you going',
        sound: 'where_are_you_going.wav'),
    phrases(
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name ?',
        sound: 'what_is_your_name.wav'),
    phrases(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime',
        sound: 'i_love_anime.wav'),
    phrases(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling?',
        sound: 'how_are_you_feeling.wav'),
    phrases(
        jpName: 'Kimasu ka',
        enName: 'are you coming?',
        sound: 'are_you_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text('Pharses'),
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (BuildContext context, int index) {
          return itemphrases(
            number: phrase[index],
            color: Color(0xff50adc7),
            itemtype: 'phrases',
          );
        },
      ),
    );
  }
}

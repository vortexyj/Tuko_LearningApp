import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/models.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<models> family = const [
    models(
        Image: 'assets/images/family_members/family_father.png',
        jpName: 'chichioya',
        enName: 'father',
        sound: 'father.wav'),
    models(
        Image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'daughter',
        sound: 'daughter.wav'),
    models(
        Image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'qjisan',
        enName: 'Grand Father',
        sound: 'grand father.wav'),
    models(
        Image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother',
        sound: 'mother.wav'),
    models(
        Image: 'assets/images/family_members/family_mother.png',
        jpName: 'Sobo',
        enName: 'Grand mother',
        sound: 'grand father.wav'),
    models(
        Image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'Older brother',
        sound: 'older bother.wav'),
    models(
        Image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older sister',
        sound: 'older sister.wav'),
    models(
        Image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son',
        sound: 'son.wav'),
    models(
        Image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ototo',
        enName: 'younger brother',
        sound: 'younger brohter.wav'),
    models(
        Image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imoto',
        enName: 'younger sister',
        sound: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text('Family members'),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (BuildContext context, int index) {
          return item(
            number: family[index],
            color: Color(0xff558b37),
            itemtype: 'family_members',
          );
        },
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tukoapp/components/Category.dart';
import 'package:tukoapp/models/phrases.dart';
import 'package:tukoapp/screens/Numbers_pages.dart';
import 'package:tukoapp/screens/color_page.dart';
import 'package:tukoapp/screens/familymembers_page.dart';
import 'package:tukoapp/screens/phrases_page.dart';

class Homepage extends StatelessWidget {
  @override
  const Homepage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffff4d9),
        appBar: AppBar(
          title: Text('Toku'),
          backgroundColor: Color(0xff46322b),
        ),
        body: Column(
          children: [
            category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return NumbersPage();
                }));
              },
              text: 'Number',
              color: Color(0xffef9235),
            ),
            category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return FamilyMembersPage();
                }));
              },
              text: 'FamilyMembers',
              color: Color(0xff558b37),
            ),
            category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return color_page();
                }));
              },
              text: 'Colors',
              color: Color(0xff79359f),
            ),
            category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return PhrasesPage();
                }));
              },
              text: 'Phases',
              color: Color(0xff50adc7),
            )
          ],
        ),
      ),
    );
  }
}

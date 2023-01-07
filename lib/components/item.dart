import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tukoapp/models/models.dart';
import 'package:audioplayers/audioplayers.dart';

class item extends StatelessWidget {
  const item(
      {super.key,
      required this.number,
      required this.color,
      required this.itemtype});
  final models number;
  final Color color;
  final String itemtype;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffef9235),
      child: Row(
        children: [
          Container(color: Color(0xfffff6dc), child: Image.asset(number.Image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioCache player =
                  AudioCache(prefix: 'assets/sounds/$itemtype/');
              player.play(number.sound);
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

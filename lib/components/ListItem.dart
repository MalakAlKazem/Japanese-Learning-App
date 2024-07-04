import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.item,
      required this.color,
      required this.itemType});
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xFFfff6DC), child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  item.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () async {
              final player = AudioPlayer();
              print('Attempting to play sound: ${item.sound}');
              try {
                await player
                    .play(AssetSource('sounds/$itemType/${item.sound}'));
                print('Sound played successfully');
              } catch (e) {
                print('Error playing sound: $e');
              }
            },
            color: Colors.white,
            iconSize: 28,
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {super.key,
      required this.item,
      required this.color,
      required this.itemType});
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Text(
                  item.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () async {
              final player = AudioPlayer();
              print('Attempting to play sound: ${item.sound}');
              try {
                await player
                    .play(AssetSource('sounds/$itemType/${item.sound}'));
                print('Sound played successfully');
              } catch (e) {
                print('Error playing sound: $e');
              }
            },
            color: Colors.white,
            iconSize: 28,
          ),
        ],
      ),
    );
  }
}

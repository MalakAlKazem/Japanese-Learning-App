import 'package:flutter/material.dart';
import 'package:learning_app/components/ListItem.dart';
import 'package:learning_app/models/item.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final List<Item> colors = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown'),
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White'),
    Item(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'Yellow'),
    Item(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'Dusty yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'Gray'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: colors[index],
            color: Color(0xFF79359F),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}

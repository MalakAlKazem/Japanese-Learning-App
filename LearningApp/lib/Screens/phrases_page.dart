import 'package:flutter/material.dart';
import 'package:learning_app/components/ListItem.dart';
import 'package:learning_app/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> phrases = const [
    Item(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku o wasurenaide kudasai',
        enName: 'dont forget to subscribe'),
    Item(
        sound: 'are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming'),
    Item(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka.',
        enName: 'how are you feeling'),
    Item(
        sound: 'i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    Item(
        sound: 'i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu daisukidesu',
        enName: 'i love programming'),
    Item(
        sound: 'what_is_your_name.wav',
        jpName: 'Anata no namae wa nandesuka?',
        enName: 'what is your name?'),
    Item(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no?',
        enName: 'where are you going'),
    Item(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai, ikimasu',
        enName: 'yes im coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            item: phrases[index],
            color: Color(0xFF50ADC7),
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learning_app/components/ListItem.dart';
import 'package:learning_app/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<Item> familyMembers = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Item(
        sound: 'grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'Grand father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    Item(
        sound: 'grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grand mother'),
    Item(
        sound: 'older brother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother'),
    Item(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musukp',
        enName: 'son'),
    Item(
        sound: 'younger brother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Ototo',
        enName: 'younger brother'),
    Item(
        sound: 'younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imoto',
        enName: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: familyMembers[index],
            color: Color(0xFF55BB37),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}

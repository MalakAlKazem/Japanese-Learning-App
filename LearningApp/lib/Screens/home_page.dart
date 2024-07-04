import 'package:flutter/material.dart';
import 'package:learning_app/Screens/colors_page.dart';
import 'package:learning_app/Screens/family_members_page.dart';
import 'package:learning_app/Screens/numbers_page.dart';
import 'package:learning_app/Screens/phrases_page.dart';
import 'package:learning_app/components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF6DB),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF46322B),
      ),
      body: Column(
        children: [
          Category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return NumbersPage();
                }));
              },
              text: 'Numbers',
              color: Color(0xFFEF9235)),
          Category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return FamilyMembersPage();
                }));
              },
              text: 'FamilyMembers',
              color: Color(0xFF55BB37)),
          Category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ColorsPage();
                }));
              },
              text: 'Colors',
              color: Color(0xFF79359F)),
          Category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: Color(0xFF50ADC7)),
        ],
      ),
    );
  }
}

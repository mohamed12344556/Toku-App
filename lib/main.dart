import 'package:flutter/material.dart';
import 'package:toku_project/screens/colors.dart';
import 'package:toku_project/screens/familymemberspage.dart';
import 'package:toku_project/screens/homepage.dart';
import 'package:toku_project/screens/numbers_page.dart';
import 'package:toku_project/screens/phrasespage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.greenAccent))),
      home: Homepage(),
      routes: {
        'Numbers': (context) => NumbersPage(),
        'Family Members': (context) => FamilyMembersPage(),
        'Phrases': (context) => PhrasesPage(),
        'Colors': (context) => ColorsPage(),
      },
    );
  }
}

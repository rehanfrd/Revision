import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/book_view.dart';

void main() {
  runApp(VocabRevisionApp());
}

class VocabRevisionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Revision Book',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Color(0xFFF4ECD8),
        fontFamily: 'Georgia',
      ),
      home: BookViewScreen(),
    );
  }
}

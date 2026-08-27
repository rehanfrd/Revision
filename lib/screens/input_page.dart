import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _wordController = TextEditingController();
  final _meaningController = TextEditingController();
  final _exampleController = TextEditingController();

  void _saveWord() {
    // Yahan aage chalkar Firebase saving logic aayega
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add New Vocabulary'), backgroundColor: Colors.brown[700]),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _wordController,
              decoration: InputDecoration(labelText: 'Word / Verb', filled: true, fillColor: Colors.white),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _meaningController,
              decoration: InputDecoration(labelText: 'Hindi Meaning', filled: true, fillColor: Colors.white),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _exampleController,
              maxLines: 3,
              decoration: InputDecoration(labelText: 'Example Sentence', filled: true, fillColor: Colors.white),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[800],
                minimumSize: Size(double.infinity, 55),
              ),
              onPressed: _saveWord,
              child: Text('Save to Chapter', style: TextStyle(fontSize: 18, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

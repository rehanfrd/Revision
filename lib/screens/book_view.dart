import 'package:flutter/material.dart';
import 'input_page.dart';

class BookViewScreen extends StatelessWidget {
  // Dummy data test karne ke liye (Firebase connect hone tak)
  final List<Map<String, String>> dailyWords = [
    {"word": "Persevere", "meaning": "लगातार कोशिश करना", "example": "He decided to persevere despite the difficulties."},
    {"word": "Articulate", "meaning": "स्पष्ट रूप से व्यक्त करना", "example": "She is a highly articulate speaker."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter: Daily Learning', style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.brown[800],
      ),
      body: PageView.builder(
        itemCount: dailyWords.length,
        itemBuilder: (context, index) {
          final item = dailyWords[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA), // Book page white
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2)],
              border: Border.all(color: Colors.brown.withOpacity(0.2)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["word"]!,
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: Colors.brown[900]),
                ),
                Divider(color: Colors.brown[300], thickness: 2, height: 40),
                Text("Meaning:", style: TextStyle(fontSize: 16, color: Colors.brown[600])),
                SizedBox(height: 5),
                Text(item["meaning"]!, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                SizedBox(height: 30),
                Text("Sentence Construction:", style: TextStyle(fontSize: 16, color: Colors.brown[600])),
                SizedBox(height: 5),
                Text(
                  '"${item["example"]!}"',
                  style: TextStyle(fontSize: 20, height: 1.5, fontStyle: FontStyle.italic, color: Colors.black87),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown[700],
        child: Icon(Icons.add_menu, color: Colors.white),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage())),
      ),
    );
  }
}

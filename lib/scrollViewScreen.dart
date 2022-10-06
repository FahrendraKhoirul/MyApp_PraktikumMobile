import 'package:flutter/material.dart';

class scrollViewScreen extends StatelessWidget {
  const scrollViewScreen({Key? key}) : super(key: key);

  static const List<String> items = [
    "IPA",
    "IPS",
    "Matematika",
    "Bahasa Inggris",
    "IPA",
    "IPS",
    "Matematika",
    "Bahasa Inggris",
    "IPA",
    "IPS",
    "Matematika",
    "Bahasa Inggris"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Text("Latihan AppBar"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  "images/DSC_0868-min.JPG",
                  height: 100,
                ),
                Text(item),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp_prakmobile/sekolahbeta.dart';

void main() {
  runApp(SekolahBeta());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = ["IPA", "IPS", "Matematika", "Bahasa Inggris"];
  final _random = Random();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan AppBar"),
        ),
        body: tes_ListView(items, _random));
  }
}

ListView tes_ListViewBuilder(items, _random) {
  return ListView.builder(
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
          borderRadius: BorderRadius.circular(10),
          color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
              [_random.nextInt(9) * 100],
        ),
      );
    },
  );
}

ListView tes_ListView(items, _random) {
  return ListView(
    children: items.map<Widget>((item) {
      return Container(
        margin: EdgeInsets.all(20),
        height: 50,
        child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text(item)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
              [_random.nextInt(9) * 100],
        ),
      );
    }).toList(),
  );
}

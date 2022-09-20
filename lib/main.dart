import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan AppBar"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                width: Size.infinite.width,
                color: Colors.deepOrangeAccent,
                alignment: Alignment.center,
                child: Text("Saya widget ditengah")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("Saya kiri"), Text("Saya kanan")],
            ),
            Container(
              width: Size.infinite.width,
              padding: EdgeInsets.all(10),
              color: Colors.amber,
              child: Container(
                alignment: Alignment.center,
                color: Colors.brown,
                child: Text("Saya Berwarna"),
              ),
            ),
            Spacer(),
            Container(
                height: 50,
                width: Size.infinite.width,
                color: Colors.deepOrangeAccent,
                alignment: Alignment.center,
                child: Text("Saya widget dibawah")),
          ],
        ),
      ),
    );
  }
}

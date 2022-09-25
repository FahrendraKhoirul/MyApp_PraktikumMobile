import 'package:flutter/material.dart';

class SekolahBeta extends StatelessWidget {
  const SekolahBeta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: tugas2()),
    );
  }
}

Center tugas1() {
  return Center(
      child: Stack(
    children: [
      Image.network(
          "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_360,q_100,w_1140/v1/gcs/platform-data-dsc/chapter_banners/Copy%20of%20Copy%20of%20Google%20Developer%20Student%20Clubs%20Chapter%20_%20Blog%20Post%20Image%20%281%29.png"),
      Padding(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Hi, Fahrendra",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/avatars/fahrendra_khoirul_ihtada.jpg"),
                      )),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: double.maxFinite,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Halo Button",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Pencet Saya",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(primary: Colors.amber),
                      onPressed: () {},
                      icon: Icon(
                        Icons.ac_unit,
                        color: Colors.black,
                      ),
                      label: Text("Pesan Text Sekarang"))
                ],
              ),
            )
          ],
        ),
      )
    ],
  ));
}

Stack tugas2() {
  return Stack(
    children: [
      Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.amber,
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "HELLO",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "WORDLD!!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 20),
            )
          ],
        ),
      ),
    ],
  );
}

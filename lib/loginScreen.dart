import 'package:flutter/material.dart';

import 'scrollViewScreen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Screen",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(24))),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => scrollViewScreen()));
                    await Future.delayed(Duration(seconds: 2));
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Login Berhasil')));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

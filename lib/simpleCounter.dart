import 'package:flutter/material.dart';

class SimpleCounter extends StatefulWidget {
  const SimpleCounter({Key? key}) : super(key: key);

  @override
  State<SimpleCounter> createState() => _SimpleCounterState();
}

class _SimpleCounterState extends State<SimpleCounter>
    with WidgetsBindingObserver {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$_counter",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(24))),
                onPressed: () {
                  setState(() {
                    increment();
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(24))),
                onPressed: () {
                  setState(() {
                    decrement();
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(24))),
                onPressed: () {
                  setState(() {
                    resetCounter();
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        print(state);
        setState(() {
          _counter = 10;
          print(_counter);
        });
        break;
      case AppLifecycleState.paused:
        print(state);

        setState(() {
          _counter = 20;
          print(_counter);
        });
        break;
      case AppLifecycleState.resumed:
        print(state);
        setState(() {
          _counter = 30;
          print(_counter);
        });
        break;
      case AppLifecycleState.detached:
        print(state);
        setState(() {
          _counter = 40;
          print(_counter);
        });
        break;
      default:
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  void resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
}

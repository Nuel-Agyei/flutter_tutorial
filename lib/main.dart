// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonname = 'Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('App name'),
          ),
          body: Center(
            child: SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonname = 'Done';
                      });
                    },
                    child: Text(buttonname),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonname = 'Done';
                        });
                      },
                      child: Text(buttonname))
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'Settings', icon: Icon(Icons.home)),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:fancy_tab/fancy_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selected = 0;


  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 0,
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FancyTab(
              selected: selected,
              labelsList: ['testing 1','testing 2','testing 3'],
              length: 3,
            // selectedColor: Colors.amber,
            // unSelectedColor: Colors.red,
              onTap: (val) {
                setState(() {
                  print(val);
                  selected = val;
                });
              },
          ),
        ),
      ),
    );
  }
}

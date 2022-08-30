import 'dart:math';
import 'package:flutter/material.dart';
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
  List<String> labelsList = [
    'testing 1',
    'testing 2',
    'testing 3',
  ];
  Color? backgroundColor;
  PageController? pageController = PageController();
  @override
  void initState() {
    super.initState();
    randomColorGenerator();
  }

  randomColorGenerator() {
    setState(() {
      backgroundColor =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 0,
          title: const Text('Fancy Tab example'),
        ),
        body: Container(
          color: backgroundColor,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: FancyTab(
                    selected: selected,
                    labelsList: labelsList,
                    length: labelsList.length,
                    selectedColor: Colors.orange,
                    unSelectedColor: Colors.deepOrangeAccent,
                    onTap: (val) {
                      setState(() {
                        selected = val;
                        pageController!.jumpToPage(val);
                        randomColorGenerator();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                    onPageChanged: (val) {
                      setState(() {
                        selected = val;
                        randomColorGenerator();
                      });
                    },
                    controller: pageController,
                    itemCount: labelsList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    labelsList[index].toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ))),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

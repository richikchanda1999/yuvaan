import 'package:flutter/material.dart';
import 'package:yuvaan/support.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  var controller = PageController(initialPage: 0, viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: ((i) {
          controller.jumpToPage(i);
        }),
        children: <Widget>[
          ScrollPage(
            header: "Test 1",
            body: "Test 2",
          ),
          ScrollPage(
            header: "Test 3",
            body: "Test 4",
          ),
        ],
      ),
    );
  }
}

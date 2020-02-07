import 'dart:math';
import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';
import 'package:yuvaan/UI/AboutUs.dart';
import 'package:yuvaan/UI/LandingPage.dart';
import 'package:yuvaan/UI/Sponsorship.dart';
import 'package:yuvaan/UI/VisionAndAim.dart';

void main() => runApp(Sponsorship());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool run = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
                this.run = !this.run;
              }),
          child: Icon((this.run) ? Icons.stop : Icons.play_arrow)),
      body: Center(child: LayoutBuilder(builder: (context, _) {
        return AnimatedDrawing.svg(
          "assets/y logoe.svg",
          run: this.run,
          animationOrder: PathOrders.original,
          duration: new Duration(seconds: 3),
          lineAnimation: LineAnimation.allAtOnce,
          animationCurve: Curves.linear,
          onFinish: () => setState(() {
            this.run = false;
          }),
        );
      })),
    );
  }
}

Path getPath(Size size) {
  var points = List<Offset>();
  points.add(Offset(size.width, 0));
  points.add(Offset(size.width * 0.5, 0));
  points.add(Offset(size.width * 0.5, size.height * 0.25));
  points.add(Offset(size.width * 0.5, size.height * 0.5));
  points.add(Offset(size.width * 0.5, size.height * 0.75));
  points.add(Offset(size.width * 0.5, size.height));
  points.add(Offset(0, size.height));
  if (points.isEmpty) return null;
  Path path = Path();
  Offset origin = points[0];
  path.moveTo(origin.dx, origin.dy);
  for (Offset o in points) {
    path.lineTo(o.dx, o.dy);
  }
  return path;
}

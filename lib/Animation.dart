import 'package:flutter/material.dart';

class AnimatedPainter extends CustomPainter {
  final Animation<double> _animation;

  AnimatedPainter(this._animation) : super(repaint: _animation);

  @override
  void paint(Canvas canvas, Size size) {
    // _animation.value has a value between 0.0 and 1.0
    // use this to draw the first X% of the path
    var points = List<Offset>();
    points.add(Offset(size.width * 0.5, 0));
//    points.add(Offset(size.width * 0.5, size.height * 0.25));
//    points.add(Offset(size.width * 0.5, size.height * 0.5));
//    points.add(Offset(size.width * 0.5, size.height * 0.75));
    points.add(Offset(size.width * 0.5, size.height));
    if (points.isEmpty) return;
    Path path = Path();
    Offset origin = points[0];
    path.moveTo(origin.dx, origin.dy);
    for (Offset o in points) {
      path.lineTo(o.dx, o.dy);
    }
    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.orange
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4.0,
    );
  }

  @override
  bool shouldRepaint(AnimatedPainter oldDelegate) {
    return true;
  }
}

class PainterDemo extends StatefulWidget {
  @override
  PainterDemoState createState() => new PainterDemoState();
}

class PainterDemoState extends State<PainterDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.stop();
    _controller.reset();
    _controller.repeat(
      period: Duration(seconds: 5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: const Text('Animated Paint')),
      body: new CustomPaint(
        foregroundPainter: new AnimatedPainter(_controller),
        child: new SizedBox(
          // doesn't have to be a SizedBox - could be the Map image
          width: 200.0,
          height: 200.0,
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _startAnimation,
        child: new Icon(Icons.play_arrow),
      ),
    );
  }
}

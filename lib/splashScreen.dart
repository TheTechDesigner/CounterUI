import 'dart:async';

import 'package:counter_app/home.dart';
import 'package:counter_app/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Center(
        child: Container(
          child: Image(
            image: AssetImage(logo),
            height: 125.0,
          ),
        ),
      ),
      painter: SplashPaint(),
    );
  }
}

class SplashPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Color(0xFF1B1F32);
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    paint.color = Color(0xFFC41A3B);
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);

    paint.color = Color(0xFFFBE0E6);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 75.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

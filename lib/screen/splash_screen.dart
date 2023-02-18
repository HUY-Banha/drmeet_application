import 'package:drmeet_application/screen/dashboard.dart';
import 'package:drmeet_application/widgets/splash_custom_painter.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => OnBroadingScreen(),
          ),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final WIDTH = MediaQuery.of(context).size.width;
    final HEIGHT = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(WIDTH, (WIDTH * 0.5638888888888889).toDouble()),
              painter: SplashTopCustomPainter(),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomPaint(
                size: Size(WIDTH, (WIDTH * 0.6888888888888889).toDouble()),
                painter: SplashBottomCustomPainter(),
              )),
          Center(
            child: Image.asset("assets/logo_cicle.png"),
          ),
        ],
      ),
    );
  }
}

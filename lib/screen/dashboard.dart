import 'package:drmeet_application/screen/main_screen.dart';
import 'package:drmeet_application/screen/login_screen.dart';
import 'package:drmeet_application/widgets/on_broading_custom_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBroadingScreen extends StatefulWidget {
  const OnBroadingScreen({super.key});

  @override
  State<OnBroadingScreen> createState() => _OnBroadingScreenState();
}

class _OnBroadingScreenState extends State<OnBroadingScreen> {
  PageController? controller;
  bool checkEnd = false;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final WIDTH = MediaQuery.of(context).size.width;
    final HEIGHT = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: CustomPaint(
            size: Size(WIDTH, (WIDTH * 0.5638888888888889).toDouble()),
            painter: BroadingBottomCustomPainter(),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: CustomPaint(
            size: Size(WIDTH, (WIDTH * 0.5666666666666667).toDouble()),
            painter: BroadingTopCustomPainter(),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Center(
            child: PageView.builder(
              controller: controller,
              itemCount: generate.length,
              onPageChanged: (value) {
                if (value == 1) {
                  setState(() {
                    checkEnd = true;
                  });
                } else {
                  setState(() {
                    checkEnd = false;
                  });
                }
              },
              itemBuilder: (context, index) => Center(
                child: OnBroadingContentWidget(
                  image: generate[index].image,
                  title: generate[index].title,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: HEIGHT * 0.05,
          left: WIDTH * 0.55,
          right: WIDTH * 0.1,
          child: checkEnd
              ? ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, fixedSize: Size(250, 50)),
                  child: const Text(
                    "Finish",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                )
              : ElevatedButton(
                  onPressed: () {
                    controller!.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, fixedSize: Size(250, 50)),
                  child: const Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                ),
        ),
      ]),
    );
  }
}

class OnBroadingModel {
  final String title;
  final String image;
  OnBroadingModel({required this.image, required this.title});
}

List<OnBroadingModel> generate = <OnBroadingModel>[
  OnBroadingModel(
      image: 'assets/on_boading1.png',
      title:
          'A consultation with a doctor is most appropriate to ensure that you are free of disease.'),
  OnBroadingModel(
      image: 'assets/on_boading2.png',
      title:
          'Consult a doctor just by joining the program without going to the hospital.'),
];

class OnBroadingContentWidget extends StatelessWidget {
  final String title;
  final String image;
  const OnBroadingContentWidget(
      {super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
            height: 150,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 2,
            ),
          )
        ],
      ),
    );
  }
}

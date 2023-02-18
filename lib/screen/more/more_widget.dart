import 'dart:ui';

import 'package:drmeet_application/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MoreWidget extends StatefulWidget {
  const MoreWidget({super.key});

  @override
  State<MoreWidget> createState() => _MoreWidgetState();
}

class _MoreWidgetState extends State<MoreWidget> {
  @override
  Widget build(BuildContext context) {
    final WIDTH = MediaQuery.of(context).size.width;
    final HEIGHT = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, top: 16),
              alignment: Alignment.topLeft,
              child: const Text(
                "More",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            Image.asset(
              "assets/sample_profile.png",
              height: 100,
            ),
            const Spacer(
              flex: 2,
            ),
            const Text(
              "Heng Dara",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const Spacer(),
            const Text(
              "hengdara@gmail.com",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const Spacer(flex: 3),
            CustomButton(
              WIDTH: WIDTH,
              title: "My Account",
              icon: CupertinoIcons.person_alt_circle,
              onPressed: () {},
            ),
            CustomButton(
              WIDTH: WIDTH,
              title: "Notification",
              icon: CupertinoIcons.bell_circle,
              onPressed: () {},
            ),
            CustomButton(
              WIDTH: WIDTH,
              title: "Help Center",
              icon: CupertinoIcons.question_circle,
              onPressed: () {},
            ),
            const Spacer(
              flex: 6,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shadowColor: Colors.white,
                  shape: const StadiumBorder(),
                  fixedSize: Size(WIDTH * 0.8, HEIGHT * 0.08)),
              child: const Text(
                "Logout",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.WIDTH,
    required this.title,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  final double WIDTH;
  final String title;
  final IconData? icon;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(WIDTH * 0.8, 50),
          backgroundColor: Colors.grey.shade100,
          shape: const StadiumBorder(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            Icon(
              //
              icon,
              color: Colors.red,
            ),
            const Spacer(
              flex: 2,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.red),
            ),
            const Spacer(
              flex: 4,
            )
          ],
        ),
      ),
    );
  }
}

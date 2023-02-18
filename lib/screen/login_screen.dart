import 'dart:ui';

import 'package:drmeet_application/screen/main_screen.dart';
import 'package:drmeet_application/screen/register_screen.dart';
import 'package:drmeet_application/widgets/custom_textformfield.dart';
import 'package:drmeet_application/widgets/log_custom_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final WIDTH = MediaQuery.of(context).size.width;
    final HEIGHT = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(children: [
          Positioned(
            bottom: HEIGHT * -0.1,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(WIDTH, (WIDTH * 0.7333333333333333).toDouble()),
              painter: LogCustomPainter(),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      child: Image.asset(
                        "assets/logo_cicle.png",
                        fit: BoxFit.cover,
                        height: 80,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Spacer()
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFieldCustom(
                        nameController: nameController,
                        labelText: "Email",
                        prefixIcon: const Icon(CupertinoIcons.mail_solid),
                      ),
                      TextFieldCustom(
                        nameController: nameController,
                        labelText: "Password",
                        prefixIcon: const Icon(CupertinoIcons.lock_circle),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: HEIGHT * 0.05,
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.grey,
                      fixedSize: Size(WIDTH * 0.4, HEIGHT * 0.08)),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                const Spacer(
                  flex: 6,
                )
              ],
            ),
          ),
          Positioned(
              bottom: HEIGHT * 0.02,
              right: WIDTH * 0.05,
              child: Row(
                children: [
                  const Text("Don’t have account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ));
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ],
              ))
        ]),
      ),
    );
  }
}

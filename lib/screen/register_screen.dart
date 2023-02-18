import 'package:drmeet_application/screen/login_screen.dart';
import 'package:drmeet_application/widgets/custom_textformfield.dart';
import 'package:drmeet_application/widgets/log_custom_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      'Register',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Spacer()
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFieldCustom(
                        nameController: nameController,
                        labelText: "First Name",
                        prefixIcon:
                            const Icon(CupertinoIcons.person_crop_circle),
                      ),
                      TextFieldCustom(
                        nameController: nameController,
                        labelText: "Last Name",
                        prefixIcon:
                            const Icon(CupertinoIcons.person_crop_circle),
                      ),
                      TextFieldCustom(
                        nameController: nameController,
                        labelText: "Email",
                        prefixIcon: const Icon(CupertinoIcons.mail_solid),
                      ),
                      TextFieldCustom(
                        nameController: nameController,
                        labelText: "Phone Number",
                        prefixIcon:
                            const Icon(CupertinoIcons.device_phone_portrait),
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
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.grey,
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: HEIGHT * 0.02,
              right: WIDTH * 0.05,
              child: Row(
                children: [
                  const Text("Already have account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ));
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 18,
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

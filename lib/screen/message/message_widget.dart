import 'package:drmeet_application/screen/message/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({super.key});

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, top: 16, bottom: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                "Message",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            ListView.builder(
              itemCount: doctorList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    doctorList[index].name,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    doctorList[index].specialists,
                  ),
                  leading: Image.asset(doctorList[index].image),
                  trailing: const Icon(CupertinoIcons.chevron_forward),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(
                            name: doctorList[index].name,
                          ),
                        ));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorModel {
  String name;
  String specialists;
  String image;

  DoctorModel({
    required this.name,
    required this.specialists,
    required this.image,
  });
}

List<DoctorModel> doctorList = <DoctorModel>[
  DoctorModel(
      name: "Heng Hong",
      specialists: "Ophthalmologists",
      image: "assets/sample_profile.png"),
  DoctorModel(
      name: "Heng Dara",
      specialists: "Dermatologists",
      image: "assets/sample_profile.png"),
  DoctorModel(
      name: "Heng Bendit",
      specialists: "Cardiologists",
      image: "assets/sample_profile.png"),
  DoctorModel(
      name: "Heng Hong",
      specialists: "Ophthalmologists",
      image: "assets/sample_profile.png"),
];

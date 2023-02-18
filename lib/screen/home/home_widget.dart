import 'package:drmeet_application/screen/home/specialist_model.dart';
import 'package:drmeet_application/screen/home/symptom_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final searchController = TextEditingController();
  final specialist = Specialist.specialList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                const Text("Hello, Panha"),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bell,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Find a specialist",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100),
                    borderRadius: BorderRadius.circular(16.0)),
                prefixIcon: const Icon(CupertinoIcons.search),
                contentPadding: const EdgeInsets.all(8),
                labelText: "Search",
              ),
            ),
          ),
          Text(
            "specialist".toUpperCase(),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: specialist.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.3,
            ),
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0),
            itemBuilder: (BuildContext context, int index) {
              return GategoryItemWidget(
                icon: specialist[index].icon,
                title: specialist[index].title,
              );
            },
          ),
          Text(
            "Symptoms".toUpperCase(),
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: Symptoms.symptomList.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2.5,
            ),
            padding: const EdgeInsets.all(0),
            itemBuilder: (BuildContext context, int index) {
              return SpecialistItemWidget(
                image: Symptoms.symptomList[index].image,
                numberdoctor: Symptoms.symptomList[index].numberDoc,
                title: Symptoms.symptomList[index].title,
              );
            },
          ),
        ],
      ),
    );
  }
}

class DoctorRecWidget extends StatelessWidget {
  final String doctorName;
  final String doctorHospital;
  DoctorRecWidget({
    super.key,
    required this.doctorHospital,
    required this.doctorName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [],
      ),
    );
  }
}

class SpecialistItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final String numberdoctor;

  const SpecialistItemWidget({
    Key? key,
    required this.image,
    required this.numberdoctor,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.02),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                    alignment: Alignment.center,
                    child: Text("$numberdoctor Doctors")),
              ],
            ),
          ),
          Image.asset(
            image,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class GategoryItemWidget extends StatelessWidget {
  const GategoryItemWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade100,
            ),
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              size: 24,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

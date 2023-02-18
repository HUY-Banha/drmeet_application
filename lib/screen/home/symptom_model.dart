class Symptoms {
  final String title;
  final String numberDoc;
  final String image;

  Symptoms({
    required this.image,
    required this.numberDoc,
    required this.title,
  });

  static List<Symptoms> symptomList = <Symptoms>[
    Symptoms(
        image: "assets/tumnail_item1.png", numberDoc: "19", title: "Cough"),
    Symptoms(
        image: "assets/tumnail_item2.png", numberDoc: "50", title: "Headact"),
    Symptoms(image: "assets/tumnail_item3.png", numberDoc: "13", title: "Hot"),
    Symptoms(image: "assets/tumnail_item4.png", numberDoc: "12", title: "Low"),
  ];
}

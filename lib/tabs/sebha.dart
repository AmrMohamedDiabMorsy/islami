import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  int index = 0;

  List<String> prayStrings = [
    "الله اكبر",
    "الحمدالله",
    "سبحان الله",
    "لا إلهَ إلاَّ اللَّه",
    "أستغفر الله",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: InkWell(
              onTap: incrementCounter,
              child: Image.asset(
                "assets/images/icon_sebha.png",
                width: 210,
                height: 312,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              "عدد التسبيحات",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffB7935F),
                      borderRadius: BorderRadius.circular(20)),
                  width: 69,
                  height: 81,
                  child: Center(
                    child: Text(
                      '$counter',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffB7935F),
                        borderRadius: BorderRadius.circular(30)),
                    width: 137,
                    height: 51,
                    child: Center(
                      child: Text(
                        prayStrings[index],
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void incrementCounter() {
    setState(() {
      counter++;
      if (index == 0 && counter == 34) {
        index = 1;
        counter = 0;
      } else if (index == 1 && counter == 33) {
        index = 2;
        counter = 0;
      } else if (index == 2 && counter == 33) {
        index = 3;
        counter = 0;
      } else if (index == 3 && counter == 33) {
        index = 4;
        counter = 0;
      } else if (index == 4 && counter == 33) {
        index = 0;
        counter = 0;
      }
    });
  }
}

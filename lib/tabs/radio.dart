import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 120,
          ),
          Image.asset("assets/images/radio_image.png"),
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Text(
              "إذاعة القرآن الكريم",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 65),
            child: SizedBox(
              width: 218.5,
              height: 36,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    size: 20,
                    color: MyThemeData.primary,
                    AssetImage("assets/images/Icon metro-next.png"),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  ImageIcon(
                    color: MyThemeData.primary,
                    size: 30,
                    AssetImage("assets/images/Icon awesome-play.png"),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  ImageIcon(
                    size: 20,
                    color: MyThemeData.primary,
                    AssetImage("assets/images/Icon metro.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

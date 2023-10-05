import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/tabs/hadeth_model.dart';
import 'package:provider/provider.dart';

class AhadethDedails extends StatelessWidget {
  static const String routeName = "AhadethDedails";

  const AhadethDedails({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadethmodel;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pro.theme == ThemeMode.light
                ? "assets/images/background.png"
                : "assets/images/bg.png"),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Card(
            elevation: 14,
            margin: const EdgeInsets.all(18),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: MyThemeData.primary),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                  endIndent: 40,
                  indent: 40,
                ),
                itemBuilder: (context, index) {
                  return Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        args.content[index],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                itemCount: args.content.length,
              ),
            ),
          ),
        ));
  }
}

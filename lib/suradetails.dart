// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/providers/provider_sura.dart';
import 'package:islami/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});
  static const String routName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraMdel;

    // if (verses.isEmpty) {
    //   loadFile(args.index);
    // }
    return ChangeNotifierProvider(
      create: (context) => ProviderSura()..loadFile(args.index),
      builder: (context, child) {
        var provider = Provider.of<ProviderSura>(context);
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
                args.name,
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
                        '${provider.verses[index]}(${index + 1})',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                itemCount: provider.verses.length,
              ),
            ),
          ),
        );
      },
    );
  }
}

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:islami/bottom_sheets/show_language_bottom_sheets.dart';
import 'package:islami/bottom_sheets/show_them_bottom_sheets%20copy.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language),
          InkWell(
            onTap: () {
              ShowLanguageBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              margin: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.primary),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(pro.local == "en"
                  ? AppLocalizations.of(context)!.english
                  : AppLocalizations.of(context)!.arabic),
            ),
          ),
          Text(AppLocalizations.of(context)!.mode),
          InkWell(
            onTap: () {
              ShowLThemeBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              margin: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.primary),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(pro.theme == ThemeMode.light ? "Light" : "Dark"),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        // isScrollControlled: true,
        shape: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            )),
        builder: (context) {
          return const LanguageBottomSheet();
        });
  }

  void ShowLThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        // isScrollControlled: true,
        shape: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            )),
        builder: (context) {
          return const ThemeingBottomSheet();
        });
  }
}

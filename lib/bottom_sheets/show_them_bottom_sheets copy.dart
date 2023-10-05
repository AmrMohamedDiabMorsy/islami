// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';
import '../my_theme_data.dart';

class ThemeingBottomSheet extends StatelessWidget {
  const ThemeingBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Light",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.theme == ThemeMode.light
                          ? Theme.of(context).colorScheme.background
                          : Theme.of(context).colorScheme.onPrimary),
                ),
                provider.theme == ThemeMode.light
                    ? const Icon(Icons.done,
                        color: MyThemeData.primary, size: 30)
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "dark",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.theme == ThemeMode.dark
                          ? Theme.of(context).colorScheme.background
                          : Theme.of(context).colorScheme.onPrimary),
                ),
                provider.theme == ThemeMode.dark
                    ? const Icon(Icons.done,
                        color: MyThemeData.primary, size: 30)
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

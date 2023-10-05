import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProviderSura extends ChangeNotifier {
  List<String> verses = [];

  void loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    // ignore: non_constant_identifier_names
    List<String> Lines = sura.split("\n");
    verses = Lines;
    notifyListeners();
  }
}

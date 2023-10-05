// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/suradetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../sura_model.dart';

class QuranTab extends StatelessWidget {
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<String> fileNames = [
    "7",
    "286",
    "200",
    "176",
    "120",
    "165",
    "206",
    "75",
    "129",
    "109",
    "123",
    "111",
    "43",
    "52",
    "99",
    "128",
    "111",
    '110',
    '98',
    "135",
    "112",
    "78",
    "118",
    "64",
    "77",
    "227",
    "93",
    "88",
    "69",
    "60",
    "34",
    "30",
    "73",
    "54",
    "45",
    "83",
    "182",
    "88",
    "75",
    "85",
    "54",
    "53",
    "89",
    "59",
    "37",
    "35",
    "38",
    "29",
    "18",
    "45",
    "60",
    "49",
    "62",
    "55",
    "78",
    "96",
    "29",
    "22",
    "24",
    "13",
    "14",
    "11",
    "11",
    "18",
    "12",
    "12",
    "30",
    "52",
    "52",
    "44",
    "28",
    "28",
    "20",
    "56",
    "40",
    "31",
    "50",
    "40",
    "46",
    "42",
    "29",
    "19",
    "36",
    "25",
    '22',
    '17',
    '19',
    '26',
    '30',
    "20",
    "15",
    "21",
    "11",
    '8',
    '5',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    "3",
    "9",
    "5",
    "4",
    "6",
    "3",
    "6",
    "3",
    "5",
    "4",
    "5",
    "6",
  ];

  QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/quran_image.png"),
          const SizedBox(
            height: 8,
          ),
          Table(
            border: TableBorder.symmetric(
              inside: const BorderSide(
                color: MyThemeData.primary,
                width: 2,
              ),
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: MyThemeData.primary,
                      width: 2,
                    ),
                  ),
                ),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.numberverses,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.suraName,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Table(
                    border: TableBorder.symmetric(
                      inside: const BorderSide(
                        color: MyThemeData.primary,
                        width: 2,
                      ),
                    ),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        decoration: const BoxDecoration(
                          border: Border.symmetric(
                              // horizontal: BorderSide(
                              //   color: MyThemeData.primary,
                              //   width: 2,
                              // ),
                              ),
                        ),
                        children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Center(
                              child: Text(
                                fileNames[index],
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    SuraDetails.routName,
                                    arguments: SuraMdel(suraName[index], index),
                                  );
                                },
                                child: Text(
                                  suraName[index],
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: provider.theme == ThemeMode.light
                                            ? MyThemeData.blackcolor
                                            : Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: suraName.length),
          ),
        ],
      ),
    );
  }
}

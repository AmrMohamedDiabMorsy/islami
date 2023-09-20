import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ahadeth_details.dart';
import 'package:islami/my_theme_data.dart';

import 'hadeth_model.dart';

class ahadethTab extends StatefulWidget {

  @override
  State<ahadethTab> createState() => _ahadethTabState();
}

class _ahadethTabState extends State<ahadethTab> {
 List<Hadethmodel>allhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allhadeth.isEmpty) {
      loadHadeth();
    }

    return Column(
      children: [
        Center(child: Image.asset("assets/images/ahadeth_image.png")),
        Divider(
          thickness: 3,
          color: MyThemeData.primary,
        ),
        Text("Ahadeth",),
        Divider(
          thickness: 3,
          color: MyThemeData.primary,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              separatorBuilder:(context , index)=> Divider(
                thickness: 1,
                endIndent: 40,
                indent: 40,
                color: MyThemeData.primary,
              ),
    itemBuilder:(context , index){
      return InkWell(
               onTap: (){
                 Navigator.pushNamed(context, AhadethDedails.routeName,
                  arguments:  allhadeth[index]
                 );
               },

            child: Text(allhadeth[index].title, textAlign: TextAlign.center,));
    },
              itemCount: allhadeth.length,
    ),
          ),
        )

      ],
    );
  }

  loadHadeth()async{
    rootBundle.loadString("assets/files/ahadeth.txt").
   then((ahadeth){
     List<String>ahadethList= ahadeth.split("#");
     for(int i = 0  ; i <ahadethList.length ; i++){
       String  hadethone = ahadethList[i];
       List<String>hadethonelines =hadethone. trim().split("\n");
       String title = hadethonelines[0];
       hadethonelines.removeAt(0);
       List<String>content=  hadethonelines;
       Hadethmodel  hadethmodel =  Hadethmodel(title ,content);
       allhadeth.add(hadethmodel);
       print(i);
       print(title);
     }
     setState(() {

     });
   }).catchError((e){
     print(e.toString());
   });
  }
}

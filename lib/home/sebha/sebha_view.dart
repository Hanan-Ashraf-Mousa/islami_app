import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';

class SebhaView extends StatefulWidget {
  SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int count = 0;

  int index = 0;

  List<String> adeih = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    "الله أكبر",
    'لاحول ولا قوة إلا بالله'
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var provider = Provider.of<AppConfigProvider>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: provider.isDark()?Alignment(0.4, -2.2):Alignment(0.1, -1.18),
            children: [
              Image.asset(provider.isDark()?'assets/images/head_of_seb7a_dark.png':'assets/images/head_of_seb7a.png'),
              InkWell(
                  onTap: () {
                    count++;
                    if(count == 33){
                      index++;
                      count =0 ;
                    }
                    if(index == adeih.length){
                      index =0 ;}
                    setState(() {

                    });
                  },
                  child: Transform.rotate(
                    angle: (count+1)*-2,
                    child: Image.asset(
                      provider.isDark()?'assets/images/body_of_seb7a_dark.png' : "assets/images/body_of_seb7a.png",
                    ),
                  )),
            ],
          ),
          provider.isDark()?SizedBox(height: 20,):SizedBox(),
          Text(
            'عدد التسبيحات ',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            alignment: Alignment.center,
            width: size.width * 0.18,
            height: size.height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: provider.isDark()?MyTheme.primaryColorDark:MyTheme.primaryColor),
            child: Text(
              count.toString(),
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: size.width * 0.5,
            height: size.height * 0.06,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: provider.isDark()?MyTheme.secondaryColorDark:MyTheme.primaryColor),
            child: Text(
              adeih[index],
              style: Theme.of(context).textTheme.titleMedium
                  ?.copyWith(color: provider.isDark()?Color(0xff0F1424):Color(0xffFFFFFF)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

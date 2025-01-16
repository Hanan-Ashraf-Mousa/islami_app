import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment(0.1, -1.18),
            children: [
              Image.asset('assets/images/head_of_seb7a.png'),
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
                      'assets/images/body_of_seb7a.png',
                    ),
                  )),
            ],
          ),
          Text(
            'عدد التسبيحات ',
            style: MyTheme.lightMode.textTheme.titleLarge,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            alignment: Alignment.center,
            width: size.width * 0.18,
            height: size.height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyTheme.primaryColor),
            child: Text(
              count.toString(),
              style: MyTheme.lightMode.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: size.width * 0.5,
            height: size.height * 0.06,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyTheme.primaryColor),
            child: Text(
              adeih[index],
              style: MyTheme.lightMode.textTheme.titleMedium
                  ?.copyWith(color: Color(0xffFFFFFF)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

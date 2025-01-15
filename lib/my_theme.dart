import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryColor = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
 static ThemeData lightMode = ThemeData(
   primaryColor: primaryColor,
   scaffoldBackgroundColor: Colors.transparent,
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     elevation: 0,
     centerTitle: true,
     titleTextStyle: TextStyle(
       fontSize:30,
       fontFamily: "ElMessiri",
       fontWeight: FontWeight.w700,
       color:blackColor

     )
 ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     type: BottomNavigationBarType.fixed,
     backgroundColor: primaryColor,
       unselectedItemColor: Color(0xffF8F8F8),
     selectedItemColor: blackColor,
     showSelectedLabels: true,
     showUnselectedLabels: false,
     selectedIconTheme: IconThemeData(
       color: blackColor,
     ),
       unselectedIconTheme:IconThemeData(
         color: Color(0xffF8F8F8)
       )
   ),


 );
  static ThemeData darkMode = ThemeData();
}
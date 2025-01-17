import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryColor = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffF8F8F8);
  static Color primaryColorDark = Color(0xff141A2E);
  static Color secondaryColorDark = Color(0xffFACC1D);


  static ThemeData lightMode = ThemeData(
   primaryColor: primaryColor,
   scaffoldBackgroundColor: Colors.transparent,
   appBarTheme: AppBarTheme(
     iconTheme: IconThemeData(
       color: blackColor,
       size: 30
     ),
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
       unselectedItemColor: whiteColor,
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
   dividerTheme: DividerThemeData(
     color: primaryColor,
     thickness: 2
   ),
iconTheme: IconThemeData(
  color: primaryColor,
  size: 50
),
   textTheme: TextTheme(
     titleLarge: TextStyle(
       fontSize: 25,
       fontFamily: "ElMessiri",
       fontWeight: FontWeight.w600,
       color: blackColor
     ),
       titleMedium: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w400,
           color: blackColor
       ),
     titleSmall: TextStyle(
       fontSize: 20,
       fontWeight: FontWeight.w400,
     )
   )


 );
  static ThemeData darkMode = ThemeData(
    primaryColor: primaryColorDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color:Colors.white ,
        size: 30
      ),
        titleTextStyle: TextStyle(
            fontSize:25,
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.w600,
            color:whiteColor
        )
    ),
    dividerTheme: DividerThemeData(
      color: secondaryColorDark,
      thickness: 2
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColorDark,
      selectedIconTheme: IconThemeData(
        color: secondaryColorDark,
        size: 40,
      ),
      unselectedIconTheme: IconThemeData(
        color: whiteColor,
        size: 30,
      ),
      selectedItemColor:  secondaryColorDark,
      unselectedItemColor: whiteColor,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 25,
              fontFamily: "ElMessiri",
              fontWeight: FontWeight.w600,
              color: whiteColor
          ),
          titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: whiteColor
          ),
          titleSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          )
      ),
    iconTheme: IconThemeData(
        color:secondaryColorDark,
        size: 30
    ),
  );
}
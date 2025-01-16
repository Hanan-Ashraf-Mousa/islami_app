import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_details_view.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        HadethDetailsView.routeName:(context)=>HadethDetailsView(),

      },
      theme: MyTheme.lightMode,
        locale: Locale('ar'),
     localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
    );
  }

}

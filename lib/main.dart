import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_details_view.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(create: (context)=>AppConfigProvider(),
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        HadethDetailsView.routeName:(context)=>HadethDetailsView(),

      },
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,
      themeMode: provider.appTheme,
        locale: Locale(provider.appLanguage),
     localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
    );
  }

}

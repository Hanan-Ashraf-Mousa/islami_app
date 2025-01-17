import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_view.dart';
import 'package:islami_app/home/quran/quran_view.dart';
import 'package:islami_app/home/radio/radio_view.dart';
import 'package:islami_app/home/sebha/sebha_view.dart';
import 'package:islami_app/home/settings/setting_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    SettingView()
    // Add more pages here as needed...
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: provider.isDark() ? AssetImage('assets/images/main_background_dark.png'):AssetImage('assets/images/main_background.png')),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title),
          ),
          body: pages[selectedIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: provider.isDark()?Theme.of(context).primaryColorDark:Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_quran.png')),
                      label: AppLocalizations.of(context)!.quran),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/icon_hadeth.png')),
                      label:AppLocalizations.of(context)!.hadeth),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                      label: AppLocalizations.of(context)!.sebha),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/icon_radio.png')),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.setting,
                  )
                ]),
          ),
        ));
  }
}

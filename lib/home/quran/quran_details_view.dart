import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/quran/item_sura_details.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';

class QuranDetailsView extends StatefulWidget {
  final String name;
  final int index;

   const QuranDetailsView({super.key, required this.name, required this.index});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var size = MediaQuery.of(context).size;
    if(verses.isEmpty) {
      loadData(widget.index);
    }
      return Stack(
        children: [
          Image.asset(
            provider.isDark()?"assets/images/main_background_dark.png":'assets/images/main_background.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.app_title),
            ),
            body: verses.isEmpty
                ? Center(child: CircularProgressIndicator(color: MyTheme.lightMode.primaryColor,))
                : Container(
                  padding: EdgeInsets.symmetric(vertical: size.height*0.02,horizontal: size.width*0.02),
                  margin: EdgeInsets.symmetric(vertical: size.height*0.09,horizontal: size.width*0.1),
                  decoration: BoxDecoration(
                    color: provider.isDark()?MyTheme.primaryColorDark:MyTheme.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' سورة  ${widget.name}',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Icon(
                            Icons.play_circle_fill,
                            color: provider.isDark()?MyTheme.secondaryColorDark:MyTheme.primaryColor,
                            size: 40,
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Expanded(
                          child: ListView.builder(
                            itemCount: verses.length,
                            itemBuilder: (context, index) => ItemSuraDetails(name: verses[index], index: index)
                          ))
                    ],
                  ),
                ),
          )
        ],
      );
    }
  List<String> verses = [];

  loadData(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = content.split('\n');
    setState(() {});
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_view.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethDetailsView extends StatelessWidget {
  static String routeName = "hadeth";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
                vertical: size.height * 0.07, horizontal: size.width * 0.06),
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.04, horizontal: size.width * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: MyTheme.whiteColor,
            ),
            child: Column(
              children: [
                Text(
                  args.title,
                  style: MyTheme.lightMode.textTheme.titleSmall,
                ),
                Divider(
                  thickness: 1,
                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: args.content.length,
                        itemBuilder: (context, index) => Text(
                              args.content[index],
                              style: MyTheme.lightMode.textTheme.titleSmall,
                          textDirection: TextDirection.rtl,
                            )))
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                //change theme to light
                provider.changeTheme(ThemeMode.light);
              },
              child: !(provider.isDark())
                  ? getSelectedItemWidget(AppLocalizations.of(context)!.light)
                  : getUnSelectedItemWidget(
                      AppLocalizations.of(context)!.light)),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.dark);
            },
              child: provider.isDark()
                  ? getSelectedItemWidget(AppLocalizations.of(context)!.dark)
                  : getUnSelectedItemWidget(
                  AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: MyTheme.primaryColor),
        ),
        Icon(
          Icons.check,
          size: 30,
        ),
      ],
    );
  }

  Widget getUnSelectedItemWidget(String text) {
    return Text(text,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).primaryColor));
  }
}

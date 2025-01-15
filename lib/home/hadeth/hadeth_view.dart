import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/hadeth_details_view.dart';
import 'package:islami_app/my_theme.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<Hadeth> hadeth = [];

  @override
  Widget build(BuildContext context) {
    if (hadeth.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Image.asset('assets/images/hadith_logo.png'),
        Divider(),
        Text(
          'عدد الأحاديث',
          style: MyTheme.lightMode.textTheme.titleLarge,
        ),
        Divider(),
        hadeth.isEmpty?CircularProgressIndicator(color: MyTheme.primaryColor,):Expanded(
            child: ListView.builder(
                itemCount: hadeth.length,
                itemBuilder: (context, index) =>
                    InkWell(onTap: () {
                          Navigator.of(context).pushNamed(HadethDetailsView.routeName,arguments: hadeth[index]);
                    }, child: Text(hadeth[index].title,style: MyTheme.lightMode.textTheme.titleSmall,textAlign: TextAlign.center,))))
      ],
    );
  }

  loadFile() async {
    String content = await rootBundle.loadString('assets/files/hadeth.txt');
    List<String> hadethList = content.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      hadeth.add(Hadeth(title: title, content: hadethLines));
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String >content;

  Hadeth({required this.title, required this.content});
}

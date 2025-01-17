import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../my_theme.dart';

class ItemSuraDetails extends StatelessWidget {
  final name ;
  final index ;
  const ItemSuraDetails({super.key,required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
       '$name (${index+1}) ',
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
    );
  }
}

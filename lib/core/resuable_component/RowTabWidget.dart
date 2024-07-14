import 'package:flutter/material.dart';

import '../utilis/strings_manager.dart';

class RowTabWidget extends StatelessWidget {
  String text;
  RowTabWidget(this.text);
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Theme.of(context).textTheme.labelLarge,),
        Row(children: [
          Text(StringsManger.seeAll,style: Theme.of(context).textTheme.bodyMedium,),
          Icon(Icons.arrow_forward_ios),
        ],),
      ],
    );
  }
}

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
        Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Row(children: [
          Text(StringsManger.seeAll,style:TextStyle(fontSize: 14)),
          Icon(Icons.arrow_forward_ios),
        ],),
      ],
    );
  }
}

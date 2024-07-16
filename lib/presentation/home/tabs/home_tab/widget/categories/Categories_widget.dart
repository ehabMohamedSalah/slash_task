import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../data_layer/model/category_model.dart';

class CategoriesWidget extends StatelessWidget {
  CategoryModel categoryDataClass;
  CategoriesWidget({required this.categoryDataClass});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     /*   width>1100?150:72*/
        SvgPicture.asset(categoryDataClass.imagePath,width: 70,height: 70,),
        Text(categoryDataClass.title,maxLines: 1,),
      ],
    );
  }
}

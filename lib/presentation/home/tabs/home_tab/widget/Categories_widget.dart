import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'DataClass.dart';

class CategoriesWidget extends StatelessWidget {
  CategoryDataClass categoryDataClass;
  CategoriesWidget({required this.categoryDataClass});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(categoryDataClass.img,height: 72.h,width: 72.w,),
        Text(categoryDataClass.text,maxLines: 1,style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}

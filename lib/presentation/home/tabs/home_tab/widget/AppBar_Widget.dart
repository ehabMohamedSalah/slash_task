import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utilis/assets_manager.dart';
import '../../../../../core/utilis/strings_manager.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(StringsManger.slash,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700),),
        Row(
          children: [
            Icon(Icons.location_on_sharp),
            Column(
              children: [
                Text(StringsManger.nasrCity,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp),),
                Text(StringsManger.cairo,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp),)
              ],
            ),
            Icon(Icons.arrow_downward_outlined,weight: 30.w,size: 30.sp,),
          ],
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            SvgPicture.asset(assetManagerr.notfication),
            ClipRRect( borderRadius:BorderRadius.circular(30),child: CircleAvatar( radius:4,child: Container(color: Colors.red,),))
          ],
        ),
      ],
    );
  }
}

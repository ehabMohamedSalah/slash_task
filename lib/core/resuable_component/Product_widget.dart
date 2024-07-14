import 'package:cached_network_image/cached_network_image.dart';
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_task/core/utilis/assets_manager.dart';

class ProductWidget extends StatelessWidget {
 // ProductEntity product;
  //BestSelling(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124.w,
      height: 170,
      decoration: BoxDecoration(
        border: Border.all(width: 2.w, color: Color(0xff004182)),
        borderRadius: BorderRadius.all(Radius.circular(15.sp)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.sp),
                    topLeft: Radius.circular(15.sp)),
                child: Image.asset("assets/images/dumyyy.png",width: 120.w,height: 114.h,fit: BoxFit.cover,),
               /* CachedNetworkImage(
                  width: 191.w,
                  height: 128.h,
                  fit: BoxFit.cover,
                  imageUrl: assetManagerr.dumyImage ?? "",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),*/
              ),
              SvgPicture.asset(
                "assets/images/like.svg",
                height: 30.h,
                width: 30.w,
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "${"Skittch" ?? ""}\n",
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              overflow: TextOverflow.ellipsis,
            ),
          ),




          Row(children: [
            Text("EGP 55"),
            Spacer(),
             SvgPicture.asset("assets/images/star_.svg"),
              SizedBox(width: 10.w,),
                SvgPicture.asset(
                "assets/images/plus.svg",
                height: 30.h,
                width: 30.w,
                )
           ]),
        ],
      ),
    );
  }
}

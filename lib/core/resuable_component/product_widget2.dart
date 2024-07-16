import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_task/Domain/entity/best_selling_entity/ProductEntity.dart';
import 'package:slash_task/core/utilis/assets_manager.dart';

class ProductWidget2 extends StatelessWidget {
  String? imagePath;
  String? name;
  num? price;

  ProductWidget2({required this.imagePath,required this.name,required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.sp),
                    topLeft: Radius.circular(15.sp)),
                child: Image.asset(imagePath??"" ,height:70,fit: BoxFit.cover,),
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
            "${name ?? ""}",
            maxLines: 2,
            style: TextStyle(

              overflow: TextOverflow.ellipsis,
            ),
          ),




          Row(children: [
            Text("${price}"),
            Spacer(),
            SvgPicture.asset("assets/images/star_.svg"),
            SizedBox(width: 10.w,),
            SvgPicture.asset(
              "assets/images/plus.svg",
              height: 20.h,
              width: 20.w,
            )
          ]),
        ],
      ),
    );
  }
}

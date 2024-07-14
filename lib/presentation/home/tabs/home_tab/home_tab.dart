import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:slash_task/core/utilis/assets_manager.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/AppBar_Widget.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/Categories_widget.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/DataClass.dart';
import 'package:slash_task/core/resuable_component/Product_widget.dart';

import '../../../../core/resuable_component/RowTabWidget.dart';
import '../../../../core/utilis/strings_manager.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ads=[ assetManagerr.Slider1,assetManagerr.Slider1,assetManagerr.Slider1];
     List<CategoryDataClass> categories=[
       CategoryDataClass(text:StringsManger.fashion ,img: assetManagerr.category1,),
       CategoryDataClass(text:StringsManger.games ,img: assetManagerr.category2,),
       CategoryDataClass(text:StringsManger.accessories ,img: assetManagerr.category3,),
       CategoryDataClass(text:StringsManger.books ,img: assetManagerr.category4,),
       CategoryDataClass(text:"Articles",img: assetManagerr.category5,)



     ];

    return  Scaffold(
       body: Padding(
         padding:   REdgeInsets.all(24.0),
         child: SingleChildScrollView(
           child: Column(
            children: [
              SizedBox(height: 50.h,),
              AppBarWidget(),
              CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200.h,
                  enlargeCenterPage: true,
                ),
                itemBuilder: (context, index, realIndex) => Image.asset(ads[index]),
                itemCount: ads.length,),
              RowTabWidget(StringsManger.categories),
              Container(
                width: double.infinity,
                height: 120.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder:  (context, index) => CategoriesWidget(categoryDataClass: categories[index],),
                    separatorBuilder:  (context, index) => SizedBox(width: 5.w,),
                    itemCount: categories.length),
              ),
              SizedBox(height: 5.h,),
              RowTabWidget(StringsManger.bestSelling),
              SizedBox(
                 height: 200.h,
                 child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ProductWidget(),
                  separatorBuilder:  (context, index) => SizedBox(width: 16.w,),
                 itemCount:6),
               ),

              SizedBox(height: 10.h,),
              RowTabWidget(StringsManger.newArrival),
              SizedBox(
                height: 200.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ProductWidget(),
                    separatorBuilder:  (context, index) => SizedBox(width: 16.w,),
                    itemCount:6),
              ),

              SizedBox(height: 10.h,),
              RowTabWidget(StringsManger.recommendedForYou),
              SizedBox(
                height: 200.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ProductWidget(),
                    separatorBuilder:  (context, index) => SizedBox(width: 16.w,),
                    itemCount:6),
              ),
              
           
            ],
                 ),
         ),
       ),
    );
  }
}

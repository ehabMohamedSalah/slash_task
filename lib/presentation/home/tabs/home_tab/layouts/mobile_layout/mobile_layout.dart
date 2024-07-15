import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/core/utilis/assets_manager.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/view_model/home_tab_view_model_cubit.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/AppBar_Widget.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/BestSelling.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/Categories_widget.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/DataClass.dart';
import 'package:slash_task/core/resuable_component/Product_widget.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/newArrival.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/widget/recommendedProduct.dart';

import '../../../../../../core/di/di.dart';
import '../../../../../../core/resuable_component/RowTabWidget.dart';
import '../../../../../../core/utilis/strings_manager.dart';
import '../../../../../../data_layer/DataClass/productDataClass.dart';



class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ads=[ assetManagerr.Slider1,assetManagerr.Slider1,assetManagerr.Slider1];


    return  BlocProvider(
      create: (context) => getIt<HomeTabViewModel>()..bestSelling(),

      child: Scaffold(
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
                      itemBuilder:  (context, index) => CategoriesWidget(categoryDataClass: ProductDataClass.categories[index],),
                      separatorBuilder:  (context, index) => SizedBox(width: 5.w,),
                      itemCount: ProductDataClass.categories.length),
                ),
                SizedBox(height: 5.h,),
                RowTabWidget(StringsManger.bestSelling),
                BestSellingWidget(),
                SizedBox(height: 10.h,),
                RowTabWidget(StringsManger.newArrival),
                NewArrivalWidget(),

                SizedBox(height: 10.h,),
                RowTabWidget(StringsManger.recommendedForYou),
                RecommendedWidget(),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utilis/colors_manager.dart';
import '../../../../../../data_layer/DataClass/productDataClass.dart';
import '../../widget/AppBar_Widget.dart';
import '../../widget/BestSelling.dart';
import '../../widget/Categories_widget.dart';
import '../../widget/newArrival.dart';
import '../../widget/recommendedProduct.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child:AppBarWidget(),),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
                children: [
                  CarouselSlider(
                    items: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "assets/images/slider1.png",
                            width: width>1100?750:600,
                            fit: BoxFit.cover,
                          )),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "assets/images/slider1.png",
                            width: width>1100?750:600,
                            fit: BoxFit.cover,
                          )),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "assets/images/slider1.png",
                            width: width>1100?750:600,
                            fit: BoxFit.cover,
                          )),
                    ],
                    options: CarouselOptions(
                      viewportFraction: 0.8,
                      enlargeCenterPage: true,
                      height: width>1100?350:250,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == index
                              ? ColorManager.searchIconColor
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ],
              )),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(height: width>700?500:300, child:  Container(
                        width: double.infinity,
                        height: 150.h,
                        child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder:  (context, index) => CategoriesWidget(categoryDataClass: ProductDataClass.categories[index],),
                        separatorBuilder:  (context, index) => SizedBox(width: 5.w,),
                        itemCount: ProductDataClass.categories.length),
                        )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(height: width>1100?400:300, child: const BestSellingWidget()),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(height: width>1100?400:300, child: const NewArrivalWidget()),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(height: width>1100?400:300, child: const RecommendedWidget()),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
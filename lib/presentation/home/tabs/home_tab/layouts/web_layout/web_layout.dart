import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utilis/colors_manager.dart';
import '../../../../../../data_layer/DataClass/productDataClass.dart';
import '../../widget/AppBar_Widget.dart';
import '../../widget/best_sellling/BestSelling.dart';
import '../../widget/best_sellling/bestSelling_grid.dart';
import '../../widget/categories/Categories_widget.dart';
import '../../widget/categories/categorieGrid.dart';
import '../../widget/new_arrival/newArrival.dart';
import '../../widget/new_arrival/newArrival_grid.dart';
import '../../widget/recommended/recommendedProduct.dart';
import '../../widget/recommended/recommended_grid.dart';

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
                    child:  SizedBox(height: width>600?500:300, child: CategoriesGrid()),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(height: width>600?500:300, child: const BestSellingGrid()),
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
                    child: SizedBox(height: width>600?500:300, child: const NewArrivalGrid()),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SizedBox(height: width>600?500:300, child: const RecommendedGrid()),
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
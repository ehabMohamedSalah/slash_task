
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_task/presentation/home/tabs/favorites_tab/favorites_screen.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/home_tab.dart';
import 'package:slash_task/presentation/home/tabs/mycart_tab/mycart_screen.dart';
import 'package:slash_task/presentation/home/tabs/profile_tab/profile_tab.dart';

import '../../core/utilis/assets_manager.dart';
import '../../core/utilis/colors_manager.dart';
import '../../core/utilis/strings_manager.dart';
import '../homeViewModel.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Widget> Tabs=[HomeTab(),FavoritesTab(),MyCartTab(),ProfileTab()];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeStates>(
        builder: (context, state)
        {
          HomeViewModel homeViewModel = HomeViewModel.get(context);

          return Scaffold(
             bottomNavigationBar: BottomNavigationBar(
               iconSize: 30.sp,

                currentIndex:homeViewModel.currentIndex ,
                onTap: (newindex) {
                  homeViewModel.changeIndex(newindex);
                },
                showUnselectedLabels: false,
                showSelectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: ColorManager.primaryColor,
                    icon: SvgPicture.asset(
                      assetManagerr.home,colorFilter: ColorFilter.mode(Colors.black, BlendMode. dstIn),height: 50.w,width: 50.w,),
                    label: "",
                    activeIcon: SvgPicture.asset(
                        assetManagerr.home,colorFilter: ColorFilter.mode(Colors.black87, BlendMode.srcIn),height: 50.w,width: 50.w,),

                  ),
                  BottomNavigationBarItem(
                    backgroundColor: ColorManager.primaryColor,

                    icon: SvgPicture.asset(
                      assetManagerr.favorite,height: 50.w,width: 50.w,),
                    label: "",
                    activeIcon: SvgPicture.asset(
                        assetManagerr.favorite,colorFilter: ColorFilter.mode(Colors.black87, BlendMode. dstOut),height: 50.w,width: 50.w,),

                  ),
                  BottomNavigationBarItem(
                    backgroundColor: ColorManager.primaryColor,
                    icon: SvgPicture.asset(
                      assetManagerr.myCart,height: 50.w,width: 50.w,),
                    label: "",
                    activeIcon: SvgPicture.asset(
                        assetManagerr.myCart,colorFilter: ColorFilter.mode(Colors.black87, BlendMode.dstOut),height: 50.w,width: 50.w,),

                  ),
                  BottomNavigationBarItem(
                    backgroundColor: ColorManager.primaryColor,
                    icon: SvgPicture.asset(
                      assetManagerr.profile,height: 50.w,width: 50.w,),
                    label: "",
                    activeIcon: SvgPicture.asset(
                        assetManagerr.profile,colorFilter: ColorFilter.mode(Colors.black87, BlendMode.dstOut),height: 50.w,width: 50.w,),

                  ),


                ]

            ),
            body: Tabs[homeViewModel.currentIndex],

          );
        });
  }
}
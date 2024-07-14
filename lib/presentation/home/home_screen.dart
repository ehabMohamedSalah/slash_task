
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_task/presentation/home/tabs/favorites_tab/favorites_screen.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/home_tab.dart';
import 'package:slash_task/presentation/home/tabs/mycart_tab/mycart_screen.dart';
import 'package:slash_task/presentation/home/tabs/profile_tab/profile_tab.dart';

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
            appBar: AppBar(),
            bottomNavigationBar: BottomNavigationBar(
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
                        "assets/images/home.svg",colorFilter: ColorFilter.mode(Colors.black, BlendMode. dstIn),),
                    label: "",
                    activeIcon: SvgPicture.asset(
                        "assets/images/home.svg",colorFilter: ColorFilter.mode(Colors.black87, BlendMode.srcIn)),

                  ),
                  BottomNavigationBarItem(
                    backgroundColor: ColorManager.primaryColor,

                    icon: SvgPicture.asset(
                        "assets/images/favorite.svg"),
                    label: "",
                    activeIcon: SvgPicture.asset(
                        "assets/images/favorite.svg",colorFilter: ColorFilter.mode(Colors.black87, BlendMode. dstOut)),

                  ),
                  BottomNavigationBarItem(
                    backgroundColor: ColorManager.primaryColor,
                    icon: SvgPicture.asset(
                        "assets/images/mycart.svg"),
                    label: "",
                    activeIcon: SvgPicture.asset(
                        "assets/images/mycart.svg",colorFilter: ColorFilter.mode(Colors.black87, BlendMode.dstOut)),

                  ),
                  BottomNavigationBarItem(
                    backgroundColor: ColorManager.primaryColor,
                    icon: SvgPicture.asset(
                        "assets/images/profile.svg"),
                    label: "",
                    activeIcon: SvgPicture.asset(
                        "assets/images/profile.svg",colorFilter: ColorFilter.mode(Colors.black87, BlendMode.dstOut)),

                  ),


                ]

            ),
            body: Tabs[homeViewModel.currentIndex],

          );
        });
  }
}
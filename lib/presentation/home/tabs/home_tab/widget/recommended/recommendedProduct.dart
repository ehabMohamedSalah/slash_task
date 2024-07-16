import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/resuable_component/Product_widget.dart';
import '../../view_model/home_tab_view_model_cubit.dart';

class RecommendedWidget extends StatefulWidget {
  const RecommendedWidget({super.key});

  @override
  State<RecommendedWidget> createState() => _RecommendedWidgetState();
}

class _RecommendedWidgetState extends State<RecommendedWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //3shan b3d m build awl frame ynade 3ala GetCateories
    //b3d m tbuild awl frame le al widget nade 3ala al categories
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HomeTabViewModel>()..recommendedProduct();
    });
  }



  Widget build(BuildContext context) {
      return BlocBuilder<HomeTabViewModel, HomeTabViewModelState>(
        buildWhen: (previous, current) {
          if(current is HomeTabRecommendedSuccess|| current is HomeTabRecommendedError|| current is HomeTabRecommendedLoading){
            return true;
          }
          return false;
        },

        builder: (context, state) {
          if(state is HomeTabRecommendedSuccess){
            return SizedBox(
              height: 190.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ProductWidget(state.recommendedEntity[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 16.w,),
                  itemCount: 6),
            );
          }
          if(state is HomeTabRecommendedError ){
            return Center(child: Text(state.errorMessage),);
          }
          return Center(child: CircularProgressIndicator(),);
        },
      );
    }
  }


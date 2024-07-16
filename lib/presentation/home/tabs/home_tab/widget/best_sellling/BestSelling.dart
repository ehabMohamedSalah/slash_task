import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/view_model/home_tab_view_model_cubit.dart';

import '../../../../../../core/resuable_component/Product_widget.dart';

class BestSellingWidget extends StatefulWidget {
  const BestSellingWidget({super.key});

  @override
  State<BestSellingWidget> createState() => _NewArrivalWidgetState();
}

class _NewArrivalWidgetState extends State<BestSellingWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //3shan b3d m build awl frame ynade 3ala GetCateories
    //b3d m tbuild awl frame le al widget nade 3ala al categories
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HomeTabViewModel>()..bestSelling();
    });
  }

  Widget build(BuildContext context) {
    return     BlocBuilder<HomeTabViewModel,HomeTabViewModelState>(
      buildWhen: (previous, current) {
        if(current is HomeTabViewModelError||current is HomeTabViewModelSuccess||current is HomeTabViewModelLoading){
          return true;
        }return false;
      },
      builder: (BuildContext context, state) {
        if(state is HomeTabViewModelSuccess){
          return  SizedBox(
            height: 200.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProductWidget( imagePath:state.bestselling[index].image ,name:state.bestselling[index].name  ,price: state.bestselling[index].price ,),
                separatorBuilder:  (context, index) => SizedBox(width: 16.w,),
                itemCount:state.bestselling.length),
          );
        }
        if(state is HomeTabViewModelError){
          return Center(child: Text(state.errorMessage),);
        }
        return Center(child: CircularProgressIndicator(),);
      },

    );

  }
}

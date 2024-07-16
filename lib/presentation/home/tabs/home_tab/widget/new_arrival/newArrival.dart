import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/view_model/home_tab_view_model_cubit.dart';

import '../../../../../../core/resuable_component/Product_widget.dart';

class NewArrivalWidget extends StatefulWidget {
  const NewArrivalWidget({super.key});

  @override
  State<NewArrivalWidget> createState() => _NewArrivalWidgetState();
}

class _NewArrivalWidgetState extends State<NewArrivalWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //3shan b3d m build awl frame ynade 3ala GetCateories
    //b3d m tbuild awl frame le al widget nade 3ala al categories
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<HomeTabViewModel>()..newArrival();
    });
  }

  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabViewModel, HomeTabViewModelState>(
      buildWhen: (previous, current) {
        if(current is HomeTabNewArrivalSuccess|| current is HomeTabNewArrivalError|| current is HomeTabNewArrivalLoading){
          return true;
        }
        return false;
      },

      builder: (context, state) {
        if(state is HomeTabNewArrivalSuccess){
          return SizedBox(
            height: 200.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProductWidget(state.newArrivalEntity[index]),
                separatorBuilder: (context, index) => SizedBox(width: 16.w,),
                itemCount: 6),
          );
        }
        return Center(child: CircularProgressIndicator(),);
      },
    );
  }
}

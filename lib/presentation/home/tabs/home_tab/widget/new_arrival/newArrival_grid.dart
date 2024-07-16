
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/di/di.dart';
import 'package:slash_task/core/utilis/strings_manager.dart';

import '../../../../../../core/resuable_component/Product_widget.dart';
import '../../../../../../core/resuable_component/RowTabWidget.dart';
import '../../../../../../core/resuable_component/product_widget2.dart';
import '../../view_model/home_tab_view_model_cubit.dart';


class NewArrivalGrid extends StatelessWidget {
  const NewArrivalGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowTabWidget(StringsManger.bestSelling),

        const SizedBox(height: 10,),
        BlocProvider(
          create: (context)=>getIt<HomeTabViewModel>()..newArrival(),
          child: BlocBuilder<HomeTabViewModel,HomeTabViewModelState>(
            builder: (context,state){
              if(state is  HomeTabNewArrivalSuccess){
                return Expanded(
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 5),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return ProductWidget2(price: state.newArrivalEntity[index].price,name: state.newArrivalEntity[index].name,imagePath: state.newArrivalEntity[index].image,);
                        },
                        itemCount: state.newArrivalEntity.length
                    )
                );
              }
              else{
                return const Center(child: CircularProgressIndicator.adaptive(),);
              }
            },
          ),
        )
      ],
    );
  }
}

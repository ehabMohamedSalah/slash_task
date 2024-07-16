
import 'package:flutter/material.dart';
import 'package:slash_task/core/utilis/strings_manager.dart';

import '../../../../../../core/resuable_component/RowTabWidget.dart';
import '../../../../../../data_layer/model/category_model.dart';
import 'Categories_widget.dart';


class CategoriesGrid extends StatelessWidget {
  List<CategoryModel> categories = CategoryModel.getCategories();
  CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowTabWidget(StringsManger.categories),
        const SizedBox(height: 10,),
        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 5),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context,index){
                return CategoriesWidget(  categoryDataClass: categories[index],);
              }
          ),
        ),
      ],
    );
  }
}

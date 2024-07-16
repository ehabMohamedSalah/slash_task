import 'package:flutter/material.dart';

import 'layouts/mobile_layout/mobile_layout.dart';
import 'layouts/web_layout/web_layout.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth > 600){
            return const WebLayout();
          }
          else{
            return MobileLayout();
          }
        }
    );
  }
}
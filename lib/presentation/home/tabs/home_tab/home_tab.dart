import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text("Slash"),
             Row(
               children: [
                 Icon(Icons.location_on_sharp),
                 Column(
                   children: [
                     Text("Nasr City"),
                     Text("Cairo"),
                   ],
                 ),
                 Icon(Icons.arrow_downward_outlined),
               ],
             ),
             Stack(
               alignment: Alignment.topRight,
               children: [
                 SvgPicture.asset("assets/images/notfication.svg"),
                 ClipRRect( borderRadius:BorderRadius.circular(30),child: CircleAvatar( radius:4,child: Container(color: Colors.red,),))
               ],
             ),
           ],
         ),
       ],
     ),
    );
  }
}

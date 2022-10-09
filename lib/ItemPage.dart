import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/ItemAppBar.dart';
import 'package:shopping_app/ItemBottomNavBar.dart';
class ItemPage extends StatelessWidget {
  List<Color> Clrs =[
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Image.asset("images/5.jpg",height: 250.0,),
          ),
         Arc(
           edge: Edge.TOP,
           arcType: ArcType.CONVEY,
           height: 30.0,
           child: Container(
             width: double.infinity,
             color: Colors.white,
             child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 20.0),
               child: Column(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(
                       top: 45.0,
                       bottom: 20.0,
                     ),
                     child: Row(
                       children: [
                         Text(
                           "Product Title",
                           style: TextStyle(
                             fontSize: 28.0,
                             color: Color(0xFF4C53A5),
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                           RatingBar.builder(
                             initialRating: 4,
                             minRating: 1,
                             direction:Axis.horizontal,
                             itemCount: 5,
                             itemSize: 20.0,
                             itemPadding:EdgeInsets.symmetric(horizontal:4.0),
                             itemBuilder: (context, _) => Icon(
                               Icons.favorite,
                               color: Color(0xFF4C53A5),
                             ),
                             onRatingUpdate:(index){},
                           ),
                         Row(
                           children: [
                             Container(
                               padding: EdgeInsets.all(5.0),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(20.0),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.5),
                                     spreadRadius: 3.0,
                                     blurRadius: 10.0,
                                     offset: Offset(0,3),
                                   ),
                                 ],
                               ),
                               child: Icon(CupertinoIcons.minus,
                               size: 18.0,
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 10.0),
                               child: Text(
                                 "01",
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xFF4C53A5),
                                 ),
                               ),
                             ),
                             Container(
                               padding: EdgeInsets.all(5.0),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(20.0),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.5),
                                     spreadRadius: 3.0,
                                     blurRadius: 10.0,
                                     offset: Offset(0,3),
                                   ),
                                 ],
                               ),
                               child: Icon(CupertinoIcons.plus,
                               size: 18.0,
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 12.0),
                     child: Text(
                       "This is more detailed description of the product.you can write here more about the product.This is lengthy description.",
                       textAlign: TextAlign.justify,
                       style: TextStyle(
                         fontSize: 17.0,
                         color: Color(0xFF4C53A5),
                       ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 8.0),
                     child: Row(
                       children: [
                         Text(
                           "Size:",
                           style: TextStyle(
                             fontSize: 18.0,
                             color: Color(0xFF4C53A5),
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         SizedBox(width: 8.0),
                         Row(
                           children: [
                             for (int i=5;i<10; i++)
                             Container(
                               height: 20.0,
                               width: 20.0,
                               alignment: Alignment.center,
                               margin: EdgeInsets.symmetric(horizontal: 5.0),
                               decoration:BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(30.0),
                                boxShadow: [
                                  BoxShadow(
                                    color:Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2.0,
                                    blurRadius: 8.0,
                                  ),
                                ]
                               ),
                               child: Text(
                                 i.toString(),
                                 style: TextStyle(
                                   fontSize: 18.0,
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xFF4C53A5),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 8.0),
                     child: Row(
                       children: [
                         Text(
                           "Color:",
                           style: TextStyle(
                             fontSize: 18.0,
                             color: Color(0xFF4C53A5),
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         SizedBox(width: 8.0),
                         Row(
                           children: [
                             for (int i=0;i<5; i++)
                             Container(
                               height: 20.0,
                               width: 20.0,
                               alignment: Alignment.center,
                               margin: EdgeInsets.symmetric(horizontal: 5.0),
                               decoration:BoxDecoration(
                                 color: Clrs[i],
                                 borderRadius: BorderRadius.circular(30.0),
                                boxShadow: [
                                  BoxShadow(
                                    color:Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2.0,
                                    blurRadius: 8.0,
                                  ),
                                ]
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}

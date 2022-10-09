import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/CategoriesWidget.dart';
import 'package:shopping_app/HomeAppBar.dart';
import 'package:shopping_app/ItemsWidget.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [
        HomeAppBar(),
        Container(
          //temporary height
          //height: 500.0,
          padding: EdgeInsets.only(top:15.0),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.0),
              topRight: Radius.circular(35.0),
            ),
          ),
          child: Column(
            children: [
              //Search widget
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                 children: [
                   Container(
                     margin: EdgeInsets.only(left: 5.0),
                     height: 50.0,
                     width: 300.0,
                     child: TextFormField(
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: "Search here...",
                       ),
                     ),
                   ),
                  Spacer(),
                   Icon(
                     Icons.camera_alt,
                     size: 27.0,
                     color: Color(0xFF4C53A5),
                   ),
                 ],
                ),
              ),
              //Categories
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 10.0,
                ),
                child: Text(
                 "Categories",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
              ),
              ),
              //Categories widget
              CategoriesWidget(),
              //Items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53AC),
                  ),
                ),
              ),
              //Items Widget
              ItemsWidget(),
            ],
          ),
        ),
      ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70.0,
        color: Color(0xFF4C53A5),
        items: [
          Icon(
            Icons.home,
            size: 30.0,color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30.0,color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30.0,color: Colors.white,
          ),
        ],
      ),
    );
  }
}

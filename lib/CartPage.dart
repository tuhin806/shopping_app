import 'package:flutter/material.dart';
import 'package:shopping_app/CartAppBar.dart';
import 'package:shopping_app/CartBottomNavBar.dart';
import 'package:shopping_app/CartItemSamples.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700.0,
            padding: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
              ),
            ),
            child: Column(
              children: [
                CartItemSamples(),
                Container(
                //  decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.circular(10.0),
                //  ),
                  margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 15.0),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF4C53A5),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Add Coupon Code",
                          style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}

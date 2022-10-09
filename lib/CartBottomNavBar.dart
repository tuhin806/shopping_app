import 'package:flutter/material.dart';
class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0,),
        height: 130.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 "Total",
                 style: TextStyle(
                   color: Color(0xFF4C53A5),
                   fontSize: 22.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               Text(
                 "\$250",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 25.0,
                   color: Color(0xFF4C53A5),
                 ),
               ),
             ],
           ),
            Container(
              alignment:Alignment.center,
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF4C53A5),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                "Check out",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25.0),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              //goes back to previous secreen page
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30.0,
              color: Color(0xFF4C53A5),
            ),
          ),
          Padding(
          padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Cart",
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
            Icon(
              Icons.more_vert,
              color: Color(0xFF4C53A5),
            ),
        ],
      ),
    );
  }
}

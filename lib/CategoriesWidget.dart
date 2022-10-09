import 'package:flutter/material.dart';
class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
       for(int i=1; i<8; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            padding: EdgeInsets.symmetric(vertical:5.0, horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //use to variable to change picture in loop
                Image.asset("images/$i.jpg",
                  width: 40.0,height: 40.0,),
                Text(
                  "Shoes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

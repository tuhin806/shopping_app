import 'package:flutter/material.dart';
class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
       //it disable the scroll functionality of gridview
      //then it eill scroll in list view of the home page
       physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
       for(int i=1; i<9; i++)
        Container(
          padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0),
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0,),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Image.asset("images/$i.jpg",
                  height: 115.0,
                    width: 115.0,
                  ),
                ),
              ),
              //product title
              Container(
                padding: EdgeInsets.only(bottom: 6.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Write description of product",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
               Padding(
                 padding: EdgeInsets.symmetric(vertical: 10.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       "\$55",
                       style: TextStyle(
                         fontSize: 16.0,
                         fontWeight: FontWeight.bold,
                         color: Color(0xFF4C53A5),
                       ),
                     ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Color(0xFF4C53A5),
                    ),
                   ],
                 ),
               ),
            ],
          ),
        ),
      ],
    );
  }
}

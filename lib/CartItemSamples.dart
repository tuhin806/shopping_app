import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CartItemSamples extends StatelessWidget {
  const CartItemSamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i=1; i<4; i++)
        Container(
          height: 110.0,
          margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0,),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Radio(
                value: "",
                groupValue: "",
                activeColor: Color(0xFF4C53A5),
                onChanged: (index){},
              ),
              Container(
                height: 70.0,
                width: 70.0,
                margin: EdgeInsets.only(right: 15.0),
                child: Image.asset("images/$i.jpg"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Title",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                    Text(
                      "\$55",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1.0,
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: Icon(
                            CupertinoIcons.plus,
                            size: 18.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "01",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1.0,
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: Icon(
                            CupertinoIcons.minus,
                            size: 18.0,
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
      ],
    );
  }
}

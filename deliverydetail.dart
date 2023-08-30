import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project/Success.dart';

class deliverydetail extends StatelessWidget {
   deliverydetail({super.key});

  var items =[
    'out for delivery',
    'delivered',
    'cancelled',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black54),
        ),
        title: Text(
          "choose item",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.black38,
              size: 26,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/image/pizza1.jpg",
                    fit: BoxFit.fill,
                    width: 250,
                  ),
                  Text(
                    "Burn To Hell Pizza\nSize: Regular\nQty: 4\n263",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                      wordSpacing: 2,
                    ),
                  ),
                ],
              ),
              Text(
                "Delivery Detail",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Restaurant Detail",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "McDonald's\nR City v.h.road,Rajkot\ncg@gmail.com\n1234556789",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Shipping Detail",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hrncy\n b29/1 vju gujarat board bhuj\ngujarat,india 370020\n9999999999",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "price detail",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "price:\nDelivery Change:\nTax(0):\npromo Count discount:\nwallet Balance\nTotal price:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "750  :\n100:\n50\n500\n0\n540",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    child: DropdownButton(
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: List.empty(),
                      padding: EdgeInsets.all(40),
                      hint: Text("Delivered",
                      ),

                      onChanged: (value) {
                        },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => success(),));
                    },
                    icon: Icon(

                      Icons.arrow_right_sharp,
                      color: Colors.black,
                    ),
                  ),

                ],
              )
            ]),

      ),
    );
  }
}

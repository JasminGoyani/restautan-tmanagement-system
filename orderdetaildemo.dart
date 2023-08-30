import 'package:flutter/material.dart';
import 'package:project/homescreen.dart';

  class orderdetaildemo extends StatelessWidget {
    const orderdetaildemo({super.key});

    @override
    Widget build(BuildContext context) {
      return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/image/fastfood.jpg"),
              SizedBox(height: 3,),
              Text("Order Your Food Now",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                ),
              Padding(padding: EdgeInsets.all(10),
                child: Text("order food and get delivery in withing a few mintes to you door",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),

                  textAlign: TextAlign.center,

              ),
              ),
              SizedBox(height: 80),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => homescreen(),),);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal:8.0),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                  ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Get Stated",
                         style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,

                         ),
                       ),
                        SizedBox(width: 10),
                       Icon(Icons.arrow_forward_ios,
                         color: Colors.white,
                         size: 20,
                       )
                     ],
                   ),
                ),
              ),
           ],
          ),
        ),
      );
    }
  }

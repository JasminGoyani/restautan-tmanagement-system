
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/deliverydetail.dart';

class homescreen extends StatelessWidget {

  List foods = [
    "burger",
    "pizza",
    "food",
    "panjabi"
  ];

  List food2 = [
    "burger.jpg",
    "pizza.gif",
    "food1.avif",
    "panjabi.jpg"
  ];

  List <Color> bgColors = [
    Colors.blue,
    Colors.grey,
    Colors.blueGrey,
    Colors.amber
  ];


@override
  Widget build(BuildContext context) {
    return Material (
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Text('delivery too',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                     SizedBox(height: 3),
                     Row(
                       children: [
                         Icon(
                           Icons.location_on,color: Colors.red,),
                         Text(
                           "India",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Icon(Icons.arrow_drop_down)
                       ],
                     )
                   ],
                 ),
                 Stack(
                   children: [
                     Container(
                       height: 50,
                         width: 50,margin: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         image: DecorationImage(
                           image: AssetImage("assets/image/girl.jpg"),
                           fit: BoxFit.cover,
                         )
                       ),
                       
                     ),
                     Positioned(
                       left: 40,
                         child: Container(
                       margin: EdgeInsets.all(5),
                       padding: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                         border: Border.all(
                           color: Colors.white,
                           width: 3,),
                         color: Colors.red,
                          shape: BoxShape.circle,
                       ),
                     ))
                   ],
                 ),
               ],

             ),
           ),
          SizedBox(height: 20),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 width: MediaQuery.of(context).size.width/1.4,
                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Center(
                   child: TextFormField(
                     decoration: InputDecoration(
                       hintText: "Search your food here ",
                       border: InputBorder.none,
                       prefixIcon: Icon(
                         Icons.search),
                       )
                     ),
                   ),
                 ),
               InkWell(
                 onTap: () {},
                 child: Container(
                   padding: EdgeInsets.all(15),
                   decoration: BoxDecoration(
                     color: Colors.red,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child:Icon(
                     Icons.filter_list,
                     color: Colors.white,
                     size: 28,
                   ),
                 ),
               ),
             ],
           ),
            SizedBox(height: 20),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("category",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),),
                  TextButton(onPressed: () {}, child: Text(
                    "SEE ALL",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ],
              ),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 shrinkWrap: true,
                 itemCount: food2.length,
                 itemBuilder: (context,index){
                  return Container(
                     width: 60,
                     margin:EdgeInsets.only(left: 5) ,
                     padding: EdgeInsets.symmetric(vertical: 5),
                     decoration: BoxDecoration(
                     color: bgColors[index],
                     borderRadius: BorderRadius.circular(6),
                     ) ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          foods[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                 }
                 ),
                ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Popular",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500
                 ),),
                 TextButton(onPressed: () {}, child:Text(
                   "SEE ALL",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 17,
                     color: Colors.deepPurple,
                   ),
                 ),
                 ),
               ]
             ),
           ),
            SizedBox(height: 220,
            child: ListView.builder(scrollDirection:Axis.horizontal,
            shrinkWrap: true,
            itemCount: food2.length,
            itemBuilder: (context,index){
                 return InkWell(onTap: () {
                   Navigator.push(context, MaterialPageRoute(
                       builder: (context) => deliverydetail(), ));
                 },
                 child: Container(
                     width: MediaQuery.of(context).size.width/1.4,
                     margin: EdgeInsets.all(1.0),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.white,
                       boxShadow:[
                           BoxShadow(
                             color: Colors.black54,
                             blurRadius: 2,
                             spreadRadius: 3,
                           )
                       ],),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset("assets/image/${food2[index]}",
                              height: 120,
                                  width: MediaQuery.of(context).size.width/1.4,
                                fit: BoxFit.cover,
                              ),
                            ),
                         Padding(padding: EdgeInsets.only(left: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       Text(food2[index],
                                         style: TextStyle(
                                           fontSize: 17,
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                                      SizedBox(height: 5),
                                      Text("Fast Food",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                          color: Colors.red,
                                          size: 20,),
                                          SizedBox(width: 20),
                                          Text("4.9",
                                          style: TextStyle(
                                            fontWeight:FontWeight.bold,
                                          ),),
                                          SizedBox(height: 5),
                                          Text("(20.0)",
                                            style: TextStyle(
                                              fontWeight:FontWeight.bold,
                                            ),),
                                        ],
                                      )

                                    ],
                                  ),
                               Column(children: [
                                 Padding(padding: EdgeInsets.all(10),
                                   child: Row(
                                     children: [
                                       Icon(Icons.location_on,
                                        color: Colors.red,
                                         size: 20,
                                   ),
                                       SizedBox(width: 2),
                                       Text("1 km",
                                       style: TextStyle(
                                         fontWeight: FontWeight.w500,
                                         color: Colors.black54,
                                       ),),


                                     ],
                                   ),
                                 ),
                                 SizedBox(height: 10),
                                 Container(
                                   padding: EdgeInsets.all(12),
                                   decoration: BoxDecoration(
                                     color: Colors.red,
                                     borderRadius: BorderRadius.only(
                                       topLeft: Radius.circular(10),
                                     ),),
                                   child:Text("\$15.89",
                                   style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white,
                                   ),) ,
                                 ),
                               ],)
                             ],
                           ),
                         )
                       ],
                     ),

                   ),

                 );
             },
            ),),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/image/panjabi.jpg",fit: BoxFit.contain,),
              ),
            ),
            SizedBox(height: 50),
          ],

        ),
      ),
    );

  }
}

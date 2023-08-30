import 'package:flutter/material.dart';
import 'package:project/orderdetaildemo.dart';

class logindemo extends StatelessWidget {
  const logindemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/home.jpg"),
          fit: BoxFit.cover)
        ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(250.0),
              child: Text("fell out the from login from",
                style: TextStyle(
                    color: Colors.white,
                fontSize: 33,
                ),
                    ),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
              right: 10,
              left: 30),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "User Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),

                  TextField(
                    obscureText: true,
                     decoration: InputDecoration(
                         fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Password",
                       border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Remerber me',style: TextStyle(
                        fontSize: 27,fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login',
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 27,
                        fontWeight: FontWeight.w700,

                      ),),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue,
                        child: IconButton(
                           color: Colors.white,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => orderdetaildemo(), ));
                          },
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {

                      }, child: Text(
                        'Remerber password ?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

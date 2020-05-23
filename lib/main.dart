import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:signup/animation.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegistrationPage(),
  )
);

class RegistrationPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue[400],
                  Colors.blue[200],
                  Colors.blue[100],
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("SignUp", style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))

                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                        color: Colors.grey[400]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Name",
                                    border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                        color: Colors.grey[400]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                        color: Colors.grey[400]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Phone Number",
                                    border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(
                                        color: Colors.grey[400]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          child: Boxstate() 
                        ),

                        SizedBox(height: 20,),
                        FadeAnimation(1.6, Container(
                          height:50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue[500],
                    
                          ),
                          
                          child: Center(
                            child: Text("Register",style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                          ),
                        )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Boxstate extends StatefulWidget{
  @override
  _Boxstate createState() => _Boxstate();
}

class _Boxstate extends State<Boxstate>{
  
  bool mystate = false;
  @override

  Widget build(BuildContext context) {
    return Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                      Checkbox(value: mystate,
                         onChanged: (bool myvalue){
                           setState((){
                             mystate = myvalue;

                           });
                          },),
                      Text("Remember me", style: TextStyle(color: Colors.black, fontSize: 16.0)),
                              ],
                            );
  }
}


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_bmical/pages/claculate.dart';
//import 'package:flutter_application_bmical/pages/brain.dart';
import 'package:flutter_application_bmical/pages/const.dart';
import 'package:flutter_application_bmical/pages/gerationdetector.dart';

import 'package:flutter_application_bmical/pages/myfab.dart';
//import 'package:flutter_application_bmical/my_wiegt/gerationdetector.dart';
class BMTCalculator extends StatefulWidget {
  const BMTCalculator();

  @override
  State<BMTCalculator> createState() => __BMTCalculatorState();
}

class __BMTCalculatorState extends State<BMTCalculator> {
  bool isMale=true ;
  int height=165;
  int width=0;
  int age=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Center(child: Text("BMI Calculator",style: TextStyle(color: Colors.white),)),),
body: Column(
  
  children: [
    Row(
      
      children: [
        Expanded(
          
          child:My_Widget(onTap: () { 
              isMale=true;
              setState(() {
                
              });
           }, icon:Icon(Icons.male,size: 100,), str: 'male', color:  isMale ? Colors.blue:color1 ),
 ),
          SizedBox(width: 8,),
            Expanded(
          
          child: My_Widget(onTap: () {
            isMale=false;
            setState(() {
              
            });
            }, icon:Icon(Icons.female,size: 100,), str: 'female',  color:  isMale ? color1:Colors.pink ),),
      ],
    ),
    SizedBox(height: 8,),
    Expanded(
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 5, 5, 55),
          borderRadius: BorderRadius.circular(10)
        ),
         child:  Column(
          children: [
            Text("Hight",style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w100),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$height",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
                Text("cm",style: TextStyle(fontSize: 16,),)
              ],
            ),
            Slider(min: 70,max: 230,
              value:height.toDouble(), onChanged: (value){
              setState(() {
                height=value.round();
              });
              
            },
            )
            
          ],
         ),
      ),
    ),

    SizedBox(height: 8,),
    Row(
      
      children: [
        Expanded(
          
          child: Container(
           margin: EdgeInsets.all(16),
           padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 5, 5, 55),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Text("WEIGHT",style: TextStyle(fontWeight: FontWeight.w100,)),
                Text("$width",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     My_Fab(functionbtn: (){
                      setState(() {
                        width++;
                      });
                      
                     }, icone: Icon(Icons.add)),
                    My_Fab(functionbtn: (){
                      setState(() {
                        width--;
                      });
                    }, icone: Icon(Icons.remove))
                  ]
                )
              ],
              
            ),
            
          )),
          SizedBox(width: 8,),
            Expanded(
          
          child: Container(
            margin: EdgeInsets.all(16),
           padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 5, 5, 55),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Text("Age",style: TextStyle(fontWeight: FontWeight.w100,)),
                Text("$age",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    My_Fab(functionbtn: (){
                      setState(() {
                        
                        age++;
                      });
                      
                    }, icone: Icon(Icons.add)),
                    My_Fab(functionbtn: (){
                      setState(() {
                        age--;
                      });
                    }, icone: Icon(Icons.remove))
                  ],
                ),
              
            ],
            
            ),
            
          )),
      ],
    ),
    GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Claculate(
          result: width/pow(height/ 100,2),
        )));
      },
      child: Container(
                    height: 80,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 213, 66, 86),
                    child: Center(child: Text("calculate",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,)),
                  )  ),
    )
  ],
),
    );
    
  }
}

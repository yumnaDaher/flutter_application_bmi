import 'package:flutter/material.dart';
import 'package:flutter_application_bmical/pages/const.dart';

class Claculate extends StatelessWidget {
  const Claculate({super.key, required this.result});

  final double result;
  String get healthness{
    String healt;
    if (result<18.5){
      healt="UnderWeight";
    }
    else if (result<=24.9){
      healt="Normal";
    }
    else if (result<=29.9){
      healt="OverWeight";
    }
    else if (result<=34.9){
      healt="Obese";
    }
    else {
      healt="ExtraObese";
    }
    return healt;
  }
  double get roundResult{
    return (result*10).round()/10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Center(child: Text("BMI Calculator",style: TextStyle(color: Colors.white,),)),
     ),
     
     body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("You Result",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,)),
        SizedBox(height: 8,),
        Expanded(
          
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(16),
            color: color1,
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(healthness,style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.normal),),
                    Text("$roundResult",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,),),
                    Text("good job",style: TextStyle(fontSize: 24,fontWeight: FontWeight.normal,),)
            
                  ],
            ),
          ),
        ),
          SizedBox(height: 8,),
         GestureDetector(
      onTap: (){
        Navigator.pop(context);},
        
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 213, 66, 86),
          ),
                      height: 80,
                      width: double.infinity,
                      
                      child: Center(child: Text("Re calculate",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,)),
                    )  ),
      ),
    )
        
      ],
     ),
    );
  }
}
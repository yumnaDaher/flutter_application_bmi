import 'package:flutter/material.dart';
import 'package:flutter_application_bmical/pages/const.dart';
import 'package:flutter_application_bmical/pages/input_page.dart';

void main() {
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: color2,
        appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(255, 2, 0, 34),elevation: 0,),
        colorScheme: Theme.of(context).colorScheme.copyWith(primary: Colors.red,secondary: Colors.yellow)
        
        
      ),
      
        home: BMTCalculator()
    );
  }
}


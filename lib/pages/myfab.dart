import 'package:flutter/material.dart';

class My_Fab extends StatelessWidget {
  final Function() functionbtn;
  final Icon icone;
  const My_Fab({super.key, required this.functionbtn, required this.icone});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: functionbtn,
    style: ElevatedButton.styleFrom(
      iconSize: 38,
      iconColor: Colors.white,
       backgroundColor: const Color.fromARGB(137, 240, 144, 144), 
        padding: EdgeInsets.all(12),
    shape: CircleBorder(),
    ),
    
     child: icone ) ;
  }
}
import 'package:flutter/material.dart';

//import 'package:flutter_application_bmical/pages/const.dart';

class My_Widget extends StatelessWidget {
  final Function()? onTap;
  final Icon icon;
  final String str;
  final Color color;
  
  const My_Widget({super.key, this.onTap, required this.icon, required this.str, required this.color, });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 100,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
             margin: EdgeInsets.all(16),
             padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  Text(str,style: TextStyle(fontWeight: FontWeight.bold,))
                ],
              ),
              
            ),
      
      ),
    );
  }
}
import 'package:flutter/material.dart';

class MemoryCard extends StatelessWidget {
  const MemoryCard({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        
        left: 20.0,
        bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15)
        ),
        width: 200,
        
        child: Stack(
          children: [
            Image.asset(
              'images/InternetSecurity.png', 
              fit: BoxFit.fill,
              height: 700,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                
                "Image title",
                style: TextStyle(
                  fontSize: 35, 
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

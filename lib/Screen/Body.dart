import 'package:flutter/material.dart';
import 'package:my_app/constent.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          FittedBox(
            child:Container(
              padding: EdgeInsets.all(15),
             margin: EdgeInsets.symmetric(vertical: 20),
             decoration: BoxDecoration(
               color: Color(0xFF372930),
               borderRadius: BorderRadius.circular(34),
             ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: KPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Text("GET STARTED",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)
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

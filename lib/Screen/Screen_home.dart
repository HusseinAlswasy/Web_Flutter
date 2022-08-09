import 'package:flutter/material.dart';
import 'package:my_app/Screen/Body.dart';
import 'package:my_app/components/bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          //to take all size

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/15653.jpg",),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Spacer(flex: 2,),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/Screen/Home.dart';
import 'package:my_app/constent.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(.16),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/logo (1).png",
              height: 25,
              alignment: Alignment.topCenter,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Foods",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            menuItem(
                title: "Home",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                }),
            menuItem(title: "about", press: () {}),
            menuItem(title: "pricing", press: () {}),
            menuItem(title: "contact", press: () {}),
            menuItem(title: "Login", press: () {}),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Get Started'.toUpperCase(),
                  ),
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell menuItem({
    final String? title,
    Function? press,
  }) {
    return InkWell(
      onTap: () {
        press!();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title!.toUpperCase(),
          style: TextStyle(
            color: KTextColor,
          ),
        ),
      ),
    );
  }
}

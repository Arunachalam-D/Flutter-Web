import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/constants/constant_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){},style: TextButton.styleFrom(
              backgroundColor: WebColors.homeColor
            ),child:const Padding(
              padding:  EdgeInsets.all(12.0),
              child: Text("Login",style: TextStyle(color: WebColors.textWhite),),
            ),),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/home_image.png"),
          fit: BoxFit.cover),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("data")
          ],
        ),
      ),
    );
  }
}

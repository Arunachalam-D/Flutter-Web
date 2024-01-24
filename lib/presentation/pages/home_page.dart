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
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: WebColors.homeColor),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Login",
                  style: TextStyle(color: WebColors.textWhite),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children:[ Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/home_image.png"),
              fit: BoxFit.cover,
            ),
          ),

        ),
        Container(
            decoration:  BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      WebColors.homeColor,
                      Colors.transparent
                    ])
            ),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,top:MediaQuery.of(context).size.height * 0.1 ),
                decoration: BoxDecoration(
                    color: WebColors.textWhite,
                    borderRadius: BorderRadius.circular(15)),
                height: 500,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SizedBox(
                      width: MediaQuery.of(context).size.width*0.25,
                      child:  TextField(
                        decoration:  InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          enabledBorder: OutlineInputBorder(
                            borderSide:const BorderSide(
                              color: WebColors.enabledBorder,
                              width: 0.5
                            ),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          
                          focusedBorder: OutlineInputBorder(
                          borderSide:const BorderSide(
                          color: WebColors.focussedBorder,
                          width: 0.5
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.25,
                      child:  TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.mail),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: WebColors.enabledBorder,
                              width: 0.5
                            ),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:const BorderSide(
                                  color: WebColors.focussedBorder,
                                  width: 0.5
                              ),
                              borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                        width: MediaQuery.of(context).size.width*0.25,
                        child:   TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            enabledBorder: OutlineInputBorder(
                              borderSide:const BorderSide(
                                color: WebColors.enabledBorder,
                                width: 0.5
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                      color: WebColors.focussedBorder,
                                      width: 0.5
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                        )
                    ),
                    const SizedBox(height: 20,),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(backgroundColor: WebColors.homeColor),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: WebColors.textWhite),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Container(
                          margin:const EdgeInsets.only(left: 30,right: 10),
                          child: const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                        ),),
                        const Text("Or continue with",style: TextStyle(color: Colors.grey),),
                        Expanded(child: Container(
                          margin:const EdgeInsets.only(left: 10,right: 30),
                          child: const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                        ),),
                      ],
                    ),
                    
                    const SizedBox(height: 15,),
                     SizedBox(
                       width: MediaQuery.of(context).size.width*0.15,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                           // padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                             // border: Border.all(color: Colors.grey)
                            ),
                              child: const Image(image: AssetImage("images/gmail.png",),height: 20,width: 20,)
                          ),
                          Container(
                              height: 35,
                              width: 35,
                              //padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  //border: Border.all(color: Colors.grey)
                              ),
                              child: const Image(image: AssetImage("images/facebook.png",),height: 20,width: 20,)
                          ),
                          Container(
                              height: 35,
                              width: 35,
                              //padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  //border: Border.all(color: Colors.grey)
                              ),
                              child:const Image(image: AssetImage("images/linkedIn.png",),height: 20,width: 20,)
                          )
                        ],
                                           ),
                     )
                  ],
                ),
              )
            ],
          )],
      ),
    );
  }
}

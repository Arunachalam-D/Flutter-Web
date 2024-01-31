import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_practice/core/constants/constant_colors.dart';
import 'package:flutter_web_practice/presentation/pages/dashboard_page.dart';

import '../../bloc/login_bloc/login_bloc.dart';
import '../../core/constants/constant_widgets.dart';
import '../../data/api_data/table_api_fetch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController loginEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //  ----   can enable app bar if required ----
      // appBar: AppBar(
      //   //backgroundColor: Colors.transparent,
      //   toolbarHeight: 80,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       TextButton(
      //         onPressed: () {},
      //         style: TextButton.styleFrom(backgroundColor: WebColors.homeColor),
      //         child: const Padding(
      //           padding: EdgeInsets.all(12.0),
      //           child: Text(
      //             "Login",
      //             style: TextStyle(color: WebColors.textWhite),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
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
                      WebColors.transparent
                    ])
            ),
        ),
          BlocBuilder<LoginBloc, LoginState>(
  builder: (context, state){
    if(state is NavigateToSigninState){
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
               margin: EdgeInsets.only(
                    top:MediaQuery.of(context).size.height * 0.15 ),
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
                      child:  textField("Username","Username",usernameController,Icons.person,null)
                    ),
                    sizedBox20(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.25,
                      child:  textField("Email","Email",emailController,Icons.email,null)
                    ),
                    sizedBox20(),
                    SizedBox(
                        width: MediaQuery.of(context).size.width*0.25,
                        child:   textField("Password","Password",passwordController,Icons.lock,Icons.remove_red_eye)
                    ),
                    sizedBox20(),
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
                    sizedBox25(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("already have an account ?",style: TextStyle(color: Colors.grey),),
                        TextButton(onPressed: (){
                          context.read<LoginBloc>().add(NavigateToLoginEvent());
                        }, child: const Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),)
                      ],
                    ),
                  ],
                ),
              )
            ],
          );
    }
    else if(state is NavigateToLoginState){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(
                top:MediaQuery.of(context).size.height * 0.15 ),
            decoration: BoxDecoration(
                color: WebColors.textWhite,
                borderRadius: BorderRadius.circular(15)),
            height:500,// MediaQuery.of(context).size.height*0.6,
            width: 500,//MediaQuery.of(context).size.width*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sizedBox20(),
                SizedBox(
                    width: MediaQuery.of(context).size.width*0.25,
                    child:  textField("Email","Email",loginEmailController,Icons.email,null)
                ),
                sizedBox20(),
                SizedBox(
                    width: MediaQuery.of(context).size.width*0.25,
                    child:   textField("Password","Password",loginPasswordController,Icons.lock,Icons.remove_red_eye)
                ),
                sizedBox20(),
                TextButton(
                  onPressed: () {
                    print("started fetching");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashBoard()));
                  },
                  style: TextButton.styleFrom(backgroundColor: WebColors.homeColor),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Login",
                      style: TextStyle(color: WebColors.textWhite),
                    ),
                  ),
                ),
                sizedBox25(),
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
                sizedBox25(),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height: 35,
                       width: 35,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                       ),
                         child: const Image(image: AssetImage("images/gmail.png",),height: 20,width: 20,)
                     ),
                     Container(
                         height: 35,
                         width: 35,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                         ),
                         child: const Image(image: AssetImage("images/facebook.png",),height: 20,width: 20,)
                     ),
                     Container(
                         height: 35,
                         width: 35,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                         ),
                         child:const Image(image: AssetImage("images/linkedIn.png",),height: 20,width: 20,)
                     )
                   ],
                                      ),

                ),
                sizedBox45(),
                TextButton.icon(onPressed: (){
                  context.read<LoginBloc>().add(NavigateToSigninEvent());
                }, icon: const Icon(Icons.arrow_back,color: Colors.black87,), label: const Text("Back",style: TextStyle(color: Colors.grey),)),
              ],
            ),
          )
        ],
      );
    }
    else{
      return const SizedBox.shrink();
    }
  },
)],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'constant_colors.dart';


SizedBox sizedBox15(){
  return const SizedBox(height: 15,);
}

SizedBox sizedBox20(){
  return const SizedBox(height: 20,);
}

SizedBox sizedBox25(){
  return const SizedBox(height: 25,);
}

SizedBox sizedBox45(){
  return const SizedBox(height: 45,);
}

TextFormField textField(String type,String text,TextEditingController controller,IconData prefixIcon, IconData? suffixIcon,){
  return TextFormField(
    obscureText: (type == "Password") ? true :false,
    controller: controller,
    decoration:  InputDecoration(
      hintText:text,
      hintStyle: const TextStyle(color: WebColors.enabledBorder),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      prefixIcon: Icon(prefixIcon),
      suffixIcon: (type == "Password") ? Icon(suffixIcon) : null,
      enabledBorder: OutlineInputBorder(
          borderSide:const BorderSide(
              color: WebColors.enabledBorder,
              width: 0.5
          ),
          borderRadius: BorderRadius.circular(20)
      ),
      errorBorder:OutlineInputBorder(
          borderSide:const BorderSide(
              color: Colors.red,
              width: 0.5
          ),
          borderRadius: BorderRadius.circular(20)
      ),
      focusedErrorBorder:const OutlineInputBorder(
        borderRadius:  BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          width: 0.5,
          color: Colors.red,
        ),
      ),
      focusedBorder: OutlineInputBorder(
          borderSide:const BorderSide(
              color: WebColors.focussedBorder,
              width: 0.5
          ),
          borderRadius: BorderRadius.circular(20)
      ),
    ),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator:(value){
      bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
      if(value.isEmpty){
        return "$type can't be empty";
      }
      else if(type == "Email" && !emailValid){
        return 'Enter valid $type';
      }
      else if(type == "Password" && controller.text.length < 8){
        return '$type must be of atleast 8 characters';
      }
      else if(type == "Username" && controller.text.length < 5){
        return '$type must be of atleast 5 characters';
      }
      return null;
    },

  );
}
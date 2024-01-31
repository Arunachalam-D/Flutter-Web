import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_practice/presentation/pages/home_page.dart';

import 'bloc/login_bloc/login_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => LoginBloc() ..add(NavigateToSigninEvent()),
        child: const HomePage(),
      ),
    );
  }
}


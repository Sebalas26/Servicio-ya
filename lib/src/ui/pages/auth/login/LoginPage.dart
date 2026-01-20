import 'package:ejercicio1/src/ui/pages/auth/login/LoginContent.dart';
import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginBloc.dart';
import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: BlocBuilder<Loginbloc, Loginstate>(
      builder: (context, state) {
        return Logincontent(state);
      },
    ));
  }
}

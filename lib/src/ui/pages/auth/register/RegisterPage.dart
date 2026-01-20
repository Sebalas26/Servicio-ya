import 'package:ejercicio1/src/ui/pages/auth/register/RegisterContent.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Registercontent(),
    ) ;
  }

}
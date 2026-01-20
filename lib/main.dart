import 'package:ejercicio1/src/ui/pages/auth/login/LoginPage.dart';
import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginBloc.dart';
import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginEvent.dart';
import 'package:ejercicio1/src/ui/pages/auth/register/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Loginbloc()..add(LoginInitEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => const Loginpage(),
          'register': (context) => const Registerpage(),
        },
      ),
    );
  }
}

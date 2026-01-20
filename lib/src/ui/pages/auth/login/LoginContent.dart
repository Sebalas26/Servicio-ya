import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginBloc.dart';
import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginEvent.dart';
import 'package:ejercicio1/src/ui/pages/auth/login/bloc/LoginState.dart';
import 'package:ejercicio1/src/ui/utils/BlocFormItem.dart';
import 'package:ejercicio1/src/ui/widgets/DefaultButton.dart';
import 'package:ejercicio1/src/ui/widgets/DefaultTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class Logincontent extends StatelessWidget {
  Loginstate state;

  Logincontent(this.state);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: state.formKey,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _textLoginRotated(),
                const SizedBox(height: 70),
                _textRegistroRotated(context)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, bottom: 50),
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 126, 180, 242),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    _textWelcome("Bienvenido"),
                    _textWelcome("Login"),
                    _imageCard(),
                    Defaulttextfield(
                        onChanged: (text) {
                          context.read<Loginbloc>().add(
                              CorreoChanged(correo: Blocformitem(value: text)));
                        },
                        text: "Correo",
                        icon: Icons.email,
                        validator: (value) {
                          return context.read<Loginbloc>().state.correo.error;
                        }),
                    const SizedBox(height: 20),
                    Defaulttextfield(
                      onChanged: (text) {
                        context.read<Loginbloc>().add(
                            ClaveChanged(clave: Blocformitem(value: text)));
                      },
                      text: "Contraseña",
                      icon: Icons.password,
                      validator: (value) {
                        return context.read<Loginbloc>().state.clave.error;
                      },
                    ),
                    const SizedBox(height: 50),
                    Defaultbutton(
                      text: "Iniciar sesion ",
                      onPressed: () {
                        if (state.formKey!.currentState!.validate()) {
                          context.read<Loginbloc>().add(FormSubmit());
                        } else {
                          print('el formulario no es valido');
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "No tienes cuenta?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: const Text(
                            "Registrate",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageCard() {
    return Image.asset(
      'assets/uber/car.png',
      height: 150,
      width: 100,
    );
  }

  Widget _textWelcome(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 40, color: Colors.white),
    );
  }

  Widget _textLoginRotated() {
    return const RotatedBox(
      quarterTurns: 1,
      child: Text(
        "Login",
        style: TextStyle(
            color: Colors.white, fontSize: 29, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _textRegistroRotated(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'register');
      },
      child: const RotatedBox(
        quarterTurns: 1,
        child: Text(
          "Registro",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
    );
  }
}

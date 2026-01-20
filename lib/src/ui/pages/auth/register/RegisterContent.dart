import 'package:ejercicio1/src/ui/widgets/DefaultButton.dart';
import 'package:ejercicio1/src/ui/widgets/DefaultTextFieldOutlined.dart';
import 'package:flutter/material.dart';

class Registercontent extends StatelessWidget {
  const Registercontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🔴 FONDO ROJO
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 212, 30, 85),
        ),

        // 🟢 TEXTO ROTADO (ENCIMA DEL SCROLL)
        Positioned(
          left: 20,
          top: MediaQuery.of(context).size.height * 0.30,
          child: _textLoginRotated(context),
        ),

        Positioned(
          left: 20,
          top: MediaQuery.of(context).size.height * 0.45,
          child: _textRegistroRotated(context),
        ),

        // 🟡 CONTENIDO SCROLLEABLE
        SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 50, bottom: 50),
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 181, 100, 117),
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
                    _textWelcome("Registro"),
                    _imageCard(),
                    DefaulttextfieldOutlined(
                        text: "Nombres", icon: Icons.person),
                    const SizedBox(height: 20),
                    DefaulttextfieldOutlined(
                        text: "Apellidos", icon: Icons.person_2_outlined),
                    const SizedBox(height: 20),
                    DefaulttextfieldOutlined(
                        text: "Correo", icon: Icons.email),
                    const SizedBox(height: 20),
                    DefaulttextfieldOutlined(
                        text: "Telefono", icon: Icons.phone),
                    const SizedBox(height: 20),
                    DefaulttextfieldOutlined(
                        text: "Contraseña", icon: Icons.password),
                    const SizedBox(height: 20),
                    DefaulttextfieldOutlined(
                        text: "Confirmar contraseña",
                        icon: Icons.password_outlined),
                    const SizedBox(height: 50),
                    Defaultbutton(
                      text: "Registrarse",
                      onPressed: () {},
                      ),
                    const SizedBox(height: 20),
                    _buttonFinal(context),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ================== WIDGETS ==================

  Widget _buttonFinal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'login');
          },
          child: const Text(
            "Iniciar sesión",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _imageCard() {
    return Image.asset(
      'assets/uber/car_white.png',
      height: 150,
      width: 100,
    );
  }

  Widget _textWelcome(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 40, color: Colors.white),
    );
  }

  Widget _textLoginRotated(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'login');
      },
      child: const RotatedBox(
        quarterTurns: 1,
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
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
          style: TextStyle(
            color: Colors.white,
            fontSize: 29,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

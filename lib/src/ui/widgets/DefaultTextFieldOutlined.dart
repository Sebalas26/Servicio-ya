import 'package:flutter/material.dart';

class DefaulttextfieldOutlined extends StatelessWidget {
  String text;
  IconData icon;

  DefaulttextfieldOutlined({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), 
        bottomRight: Radius.circular(10))
      ),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 157, 113, 113), width: 2)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 54, 36, 145), width: 2)),
          label: Text(text),
          prefixIcon: Container(
            margin: const EdgeInsets.only(top: 10),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Icon(icon),
                Container(
                    height: 20,
                    width: 1,
                    color: const Color.fromARGB(255, 106, 106, 106))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

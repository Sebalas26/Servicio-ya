import 'package:flutter/material.dart';

class Defaulttextfield extends StatelessWidget {

  Function (String text) onChanged;
  String text;
  IconData icon;
  String? Function(String?)? validator;

  Defaulttextfield({super.key, 
  required this.onChanged,
  required this.text,
  required this.icon,
  this.validator });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: TextFormField(
        onChanged: (text) {
          onChanged(text);
        },
        validator: validator,
        decoration: InputDecoration(
          border: InputBorder.none,
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

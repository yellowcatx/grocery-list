import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 45,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(132, 104, 104, 104))),
              hoverColor: Color.fromARGB(255, 202, 183, 126),
              fillColor: Color.fromARGB(113, 255, 214, 64),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(132, 104, 104, 104)),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(12))),
            ),
          ),
        ));
  }
}

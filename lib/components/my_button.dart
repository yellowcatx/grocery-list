import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: const Color.fromRGBO(243, 211, 188, 0.904),
          fixedSize: const Size(300, 50)),
      child: const Text(
        'Entrar',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

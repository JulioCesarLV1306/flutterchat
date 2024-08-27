import 'package:flutter/material.dart';

class Messagefilebox extends StatelessWidget {
  const Messagefilebox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(20));
    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
          onPressed: () {
            print('valor de la caja de Texto: ');
          },
          icon: const Icon(Icons.send_outlined)),
    );
    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("Sumit Value $value");
      },
      onChanged: (value) {
        print('value $value');
      },
    );
  }
}

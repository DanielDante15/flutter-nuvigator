import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.onClose,
  });
  final Function() onClose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Informações do usuário'),
        ElevatedButton(onPressed: onClose, child: const Text('retornar'))
      ])),
    );
  }
}

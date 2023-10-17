import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/models/user.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key, required this.usuario});
  final Usuario? usuario;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Informações do usuário'),
          Text('Nome: ${usuario?.nome}'),
          Text('Email: ${usuario?.email}'),
          Text('Empresa: ${usuario?.empresa}'),
        ],
      )),
    );
  }
}

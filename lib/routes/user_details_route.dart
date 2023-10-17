// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_nuvigator/models/user.dart';
import 'package:flutter_nuvigator/pages/user_info_screen.dart';
import 'package:nuvigator/next.dart';

class UserDetailsArgs {
  UserDetailsArgs({required this.usuario});

  final Usuario usuario;

  static UserDetailsArgs fromJson(Map<String, dynamic> json) {
    return UserDetailsArgs(usuario: json['usuarios']);
  }
}

class UserDetailsRoute extends NuRoute<NuRouter, UserDetailsArgs, Usuario> {
  @override
  String get path => 'user-details';

  @override
  ScreenType? get screenType => cupertinoDialogScreenType;

  @override
  ParamsParser<UserDetailsArgs> get paramsParser => UserDetailsArgs.fromJson;

  @override
  Widget build(
      BuildContext context, NuRouteSettings<UserDetailsArgs?> settings) {
    return UserInfoScreen(
      usuario: settings.args?.usuario,
    );
  }
}

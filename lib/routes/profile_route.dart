// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_nuvigator/pages/profile.dart';
import 'package:nuvigator/next.dart';

class ProfileRoute extends NuRoute {
  @override
  String get path => 'profile';

  @override
  ScreenType? get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object?> settings) {
    return ProfileScreen(onClose: () => nuvigator.pop('Retorno de parametro'));
  }
}

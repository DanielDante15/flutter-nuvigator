import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/routes/home_routes.dart';
import 'package:flutter_nuvigator/routes/login_route.dart';
import 'package:flutter_nuvigator/routes/profile_route.dart';
import 'package:flutter_nuvigator/routes/sign_up_route.dart';
import 'package:flutter_nuvigator/routes/user_details_route.dart';
import 'package:nuvigator/next.dart';

class MyRouter extends NuRouter {
  @override
  String get initialRoute => 'home';

  @override
  List<NuRoute<NuRouter, Object?, Object?>> get registerRoutes => [
        HomeRoute(),
        LoginRoute(),
        ProfileRoute(),
        SignUpRoute(),
        UserDetailsRoute()
      ];

  Widget build(BuildContext context) {
    return Nuvigator(router: MyRouter());
  }
}

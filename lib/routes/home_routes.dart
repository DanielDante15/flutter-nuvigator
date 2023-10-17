import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_nuvigator/pages/home_screen.dart';
import 'package:nuvigator/next.dart';

class HomeRoute extends NuRoute {
  @override
  String get path => 'home';

  @override
  ScreenType? get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object?> settings) {
    return HomeScreen(
      
      onLoginClick: ()=>nuvigator.open('login'),
      onProfileClick: ()=>nuvigator.open('myapp://profile'),
      onSignUpClick: ()=>nuvigator.open('sign-up'),
      onUserDetailsClick: (params)=>nuvigator.open('user-details',parameters: params),
    );
  }
}

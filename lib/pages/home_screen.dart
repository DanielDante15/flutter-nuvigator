import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/models/user.dart';
import 'package:nuvigator/next.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {super.key,
      this.onProfileClick,
      this.onSignUpClick,
      this.onUserDetailsClick,
      this.onLoginClick});

  final onProfileClick;
  final onSignUpClick;
  final onUserDetailsClick;
  final onLoginClick;
  @override
  Widget build(BuildContext context) {
    final nuvigator = Nuvigator.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 60),
              child: Text('Home Screen'),
            ),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                const SizedBox(),
                ElevatedButton(
                    onPressed: () => onLoginClick(),
                    child: const Text('Login Screen')),
                ElevatedButton(
                    onPressed: () => nuvigator?.open('myapp://sign-up'),
                    child: const Text('Sign Up Screen')),
                ElevatedButton(
                    onPressed: () async {
                      nuvigator?.open('myapp://profile?name=orgs');
                    },
                    child: const Text('Profile Screen')),
                ElevatedButton(
                    onPressed: () => onUserDetailsClick({
                          "usuarios": Usuario(
                              id: 1,
                              nome: "Daniel Dante",
                              email: "danieldantefm@gmail.com",
                              empresa: "Robert Bosch Ltda")
                        }),
                    child: const Text('User Details')),
                const SizedBox(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

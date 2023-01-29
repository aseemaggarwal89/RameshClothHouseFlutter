import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login Screen',
            ),
            SizedBox(
              height: 16,
            ),
            // ElevatedButton(
            //   onPressed: () => context.router.push(SignupScreenRoute()),
            //   child: Text(
            //     'Go to SignupScreen',
            //   ),
            // ),
            // SizedBox(
            //   height: 16,
            // ),
            // ElevatedButton(
            //   onPressed: () => context.router.replace(UserScreenRoute()),
            //   child: Text(
            //     'Login (UserScreen)',
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

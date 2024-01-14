import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp2/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo( // replace with own logo
              size: 150,
            ),
            Flexible( // actual login buttons
              child: LoginButton(
                icon: FontAwesomeIcons.userNinja,
                text: 'Continue as Guest',
                loginMethod: AuthService().anonLogin,
                color: Colors.deepPurple,
              ),
              ),
          ],
        ),
      ),
    );
  }
}

// App will have 3 login methods: Google, Apple, Anonymouse
// use LoginButton StatelessWidget to impliment button for each method
class LoginButton extends StatelessWidget {
  // when creating the login button, it'll take the following arguments:
  // we can pass named arguments into custom widgets by first declaring properties on the class
  // then reference these properties in the constructor
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton({
    Key? key,
    // then reference above properties in the constructor
    // required makes these properties required
    required this.text,
    required this.icon,
    required this.color,
    required this.loginMethod})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        label: Text( // The label is required for ElevatedButton.icon
          text,
          style: const TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(24),
          backgroundColor: color,
        ),
        onPressed: () => loginMethod(),
        ),
    );
  }
}

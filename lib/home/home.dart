import 'package:flutter/material.dart';
import 'package:myapp2/login/login.dart';
import 'package:myapp2/topics/topics.dart';
import 'package:myapp2/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting for the stream to produce a value, show a loading indicator
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // If the stream produces an error, show an error message
          return const Center(child: Text('An error occurred!'));
        } else if (snapshot.hasData) {
          // If the stream has data, show the TopicsScreen
          return const TopicsScreen();
        } else {
          // If the stream is done and has no data, show the LoginScreen or another appropriate widget
          return const LoginScreen();
        }
      },
    );
  }
}

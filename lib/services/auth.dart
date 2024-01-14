import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // two different ways we can access user in firebase
  // create instance variables for both methods
  // 1 with a stream
  // authStateChanges() -> stream of current user
  final userStream = FirebaseAuth.instance.authStateChanges();
  // 2 synchronously
  // useful if you need to check authentication state when a user clicks on a button
  final user = FirebaseAuth.instance.currentUser;

  Future<void> anonLogin() async {
    // when logging a user in, good idea to wrap code in try catch block
    // we catch the FirebaseAuthException
    // then we can let user know if something went wrong
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      // handle error
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}

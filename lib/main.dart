import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/routes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // Initialize for both web and mobile
    await Firebase.initializeApp(
      options: kIsWeb ? FirebaseOptions(
        apiKey: "AIzaSyD7qRGvODwZFzzkfZOfchwmoGj1m7iD6_s",
        appId: "1:472930125750:web:61c81efaf9d2f4f80ae317",
        messagingSenderId: "472930125750",
        projectId: "myapp2-320f2",
      ) : null, // null will automatically use the default configuration
    );
    print('Firebase initialized successfully');
  } catch (e) {
    print('Error initializing Firebase: $e');
  }

  runApp(const MyApp());
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define the initial route or the home widget
      // and also provide your routes if you are using named routes
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}

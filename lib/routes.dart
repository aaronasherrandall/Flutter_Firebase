import 'about/about.dart';
import 'profile/profile.dart';
import 'login/login.dart';
import 'home/home.dart';
import 'topics/topics.dart';

// map that maps a string value to actual widget we want to display
var appRoutes = {
  // value is an anonymous function that has access to the build context
  // returns a widget
  // widget that will be pushed onto stack when you navigate to this route
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};

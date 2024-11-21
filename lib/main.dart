import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'signup_screen.dart';
import 'home_screen.dart';
import 'welcome_screen.dart';

void main() async {
  // Ensure Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase for Android
  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCUCxAvUkJi-kMukT4UlclLnE5RH-v8gig", // Replace with your actual API key
        appId: "1:288056753553:android:5355f625519b4039766e30", // Replace with your actual app ID
        messagingSenderId: "288056753553", // Replace with your actual sender ID
        projectId: "demo3-e9227", // Replace with your actual project ID
      ),
    );
  } else {
    // Initialize Firebase without options for non-Android platforms
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Welcome App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pair_tasker/home_screen.dart';
import 'package:pair_tasker/initial_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pair_tasker/login_page.dart';
import 'package:pair_tasker/register_screen.dart';
import 'package:pair_tasker/user_details_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PairTasker',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomePage(),
        '/userform': (context) => const UserFormScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

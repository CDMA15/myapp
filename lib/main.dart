import 'package:flutter/material.dart';
import 'package:myapp/screen/resources/adultosResources.dart';
import 'package:myapp/screen/resources/cunaResources.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/screen/login.dart';
import 'package:myapp/screen/principal.dart';
import 'package:myapp/screen/register.dart';
import 'package:myapp/screen/resources/infantesResources.dart';
import 'package:myapp/screen/resources/intermediariosResources.dart';
import 'package:myapp/screen/resources/juvenilesResources.dart';
import 'package:myapp/screen/resources/primariosResources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
    // configuramos todas las rutas que vamos a tener en la aplicación
    // llevan un nombre el contexto y el widget de cada vista.
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const HomePage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/register': (BuildContext context) => const RegisterPage(),
        '/principal': (BuildContext context) => const PrincipalPage(),
        '/cunaResources': (BuildContext context) => const CunaResourcesPage(),
        '/infantesResources': (BuildContext context) => const InfantesResourcesPage(),
        '/primariosResources': (BuildContext context) => const PrimariosResourcesPage(),
        '/intermediariosResources': (BuildContext context) => const IntermediariosResourcesPage(),
        '/juvenilesResources': (BuildContext context) => const JuvenilesResourcesPage(),
        '/adultosResources': (BuildContext context) => const AdultosResourcesPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3365999707.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2390310265.
      home: const HomePage(),
      
    );
  }
}
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});
  @override
  State<PrincipalPage> createState() => _MyPrincipalPageState();
}

class _MyPrincipalPageState extends State<PrincipalPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Estoy en Principal'),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/login')
            }, child: const Text('Login')),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/register')
            }, child: const Text('Register'))
          ],
        ),
      ),
    );
  }
}
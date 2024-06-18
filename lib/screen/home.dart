import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Estoy en Home'),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/login')
            }, child: const Text('Login')),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/register')
            }, child: const Text('Register')),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/principal')
            }, child: const Text('Principal'))
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => BaseLoginPageState();
}

class BaseLoginPageState extends State<LoginPage> {
  late double slider = 0.3;
  TextEditingController  email = TextEditingController();
  TextEditingController  password = TextEditingController();



  login() async {
    var url = Uri.parse('https://5661-190-11-64-42.ngrok-free.app/');
    var request = await http.post(url);
    if (request.statusCode == 200){
      print('Post done');
    }
    print('Email is ${email.text.trim()}');
    reload();
  }

  reload(){
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Estoy en Login'),
            Text('Email is ${email.text.trim()}'),
            _emailField(),
            _passwordField(),
            ElevatedButton(onPressed: () => {}, child: const Text('Iniciar Sesión')),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/register')
            }, child: const Text('Registrarse')),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/')
            }, child: const Text('Home'))
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return TextField(
      controller: email,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'example@gmail.com',
        labelText: 'Email Adress',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
        )
      ));
  }

  Widget _passwordField() {
    return TextField(
      controller: password,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        hintText: 'examplePassword',
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
        )
      ));
  }
}
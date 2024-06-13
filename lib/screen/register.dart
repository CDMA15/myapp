import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => BaseRegisterPageState();
}

class BaseRegisterPageState extends State<RegisterPage> {
  
  TextEditingController  email = TextEditingController();
  TextEditingController  password = TextEditingController();
  TextEditingController  username = TextEditingController();

  register() async {
    var url = Uri.parse('https://stslab.qhanati.com/websda/api/appuser/register');
    var request = await http.post(url,
    headers: {"Content-Type": "application/json"},
    body: jsonEncode({
      "UserName" : username,
      "Email" : email,
      "Password" : password
    })
    );
    if (request.statusCode == 200){
      print('Post done');
      reload();
    }
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
            const Text('Estoy en Register'),

            _userField(),
            _emailField(),
            _passwordField(),

            ElevatedButton(onPressed: (register), child: const Text('Register')),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/login')
            }, child: const Text('Login')),
            ElevatedButton(onPressed: () => {
              Navigator.pushNamed(context, '/')
            }, child: const Text('Go Home'))
          ],
        ),
      ),
    );
  }

  Widget _userField() {
    return TextField(
      controller: username,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        hintText: 'example',
        labelText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
        )
      ));
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
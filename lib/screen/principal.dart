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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
                Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cunaResources');
                  },
                  label: const Text(
                    "Cuna",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.radio_button_unchecked),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.centerLeft,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
                ),
                const SizedBox(height: 15),
                Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/infantesResources');
                  },
                  label: const Text(
                    "Infantes",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.radio_button_unchecked),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.centerLeft,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
                ),
                const SizedBox(height: 15),
                Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/primariosResources');
                  },
                  label: const Text(
                    "Primarios",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.radio_button_unchecked),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.centerLeft,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
                ),
                const SizedBox(height: 15),
                Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/intermediariosResources');
                  },
                  label: const Text(
                    "Intermediarios",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.radio_button_unchecked),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.centerLeft,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
                ),
                const SizedBox(height: 15),
                Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/juvenilesResources');
                  },
                  label: const Text(
                    "Juveniles",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.radio_button_unchecked),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.centerLeft,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
                ),
                const SizedBox(height: 15),
                Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/adultosResources');
                  },
                  label: const Text(
                    "Adultos",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.radio_button_unchecked),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.centerLeft,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
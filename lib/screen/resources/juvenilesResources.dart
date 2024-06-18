import 'package:flutter/material.dart';

class JuvenilesResourcesPage extends StatefulWidget {
  const JuvenilesResourcesPage({super.key});
  @override
  State<JuvenilesResourcesPage> createState() => _MyJuvenilesResourcesPageState();
}

class _MyJuvenilesResourcesPageState extends State<JuvenilesResourcesPage> {

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
                  onPressed: () {},
                  label: const Text(
                    "Lección",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.keyboard_arrow_right),
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
                  onPressed: () {},
                  label: const Text(
                    "Material",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.keyboard_arrow_right),
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
                  onPressed: () {},
                  label: const Text(
                    "Multimedia",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.keyboard_arrow_right),
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
                  onPressed: () {},
                  label: const Text(
                    "Extras",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  icon: const Icon(Icons.keyboard_arrow_right),
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
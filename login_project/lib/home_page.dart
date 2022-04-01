import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'boasvindas_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Home Page', textAlign: TextAlign.center),
          TextButton(
            onPressed: () async {
              bool quit = await sair();
              if (quit) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BoasVindasPage(),
                  ),
                );
              }
            },
            child: const Text('Sair'),
          ),
        ],
      ),
    );
  }

  Future<bool> sair() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
    return true;
  }
}

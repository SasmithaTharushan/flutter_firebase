import 'package:firebase/service/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  //create a obj from AuthService
  final AuthService _auth = AuthService();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          TextButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: const Icon(Icons.logout_outlined),
            label: const Text('Logout'),
          )
        ],
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}

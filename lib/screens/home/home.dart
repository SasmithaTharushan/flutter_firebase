import 'package:firebase/constants/colors.dart';
import 'package:firebase/constants/description.dart';
import 'package:firebase/service/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //create a obj from AuthService
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Home'),
        backgroundColor: Colors.black,
        actions: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black)),
            onPressed: () async {
              await _auth.signOut();
            },
            child: const Icon(Icons.logout),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Home",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                  child: Image.asset(
                'assets/image/profile.png',
                height: 200,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

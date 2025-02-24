import 'package:firebase/constants/colors.dart';
import 'package:firebase/constants/description.dart';
import 'package:firebase/constants/styles.dart';
import 'package:firebase/service/auth.dart';
import 'package:flutter/material.dart';

class sign_In extends StatefulWidget {
  const sign_In({super.key});

  @override
  State<sign_In> createState() => _sign_InState();
}

class _sign_InState extends State<sign_In> {
  //ref to auth service class
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgBlack,
        appBar: AppBar(
          title: const Text('Sign In'),
          elevation: 0,
          backgroundColor: bgBlack,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              //description
              Text(
                description,
                style: descStyle,
              ),
            ],
          ),
        ));
  }
}
// ElevatedButton(
//           child: Text("Sign in Anonymously"),
//           onPressed: () async {
//             dynamic result = await _auth.signInAnon();
//             if (result == null) {
//               print('error signing in');
//             } else {
//               print('signed in annonymously');
//               print(result);
//             }
//           })

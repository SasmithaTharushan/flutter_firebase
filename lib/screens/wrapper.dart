import 'package:firebase/models/UserModel.dart';
import 'package:firebase/screens/auth/authenticate.dart';
import 'package:firebase/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    //return either home or authenticate widget
    final user = Provider.of<UserModel?>(context);
    if (user != null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}

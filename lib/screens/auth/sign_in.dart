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

  //form key
  final _formKey = GlobalKey<FormState>();
  //email pw states
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgBlack,
        appBar: AppBar(
            title: const Text(
              'Sign In',
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0,
            backgroundColor: bgBlack),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                //description
                Text(
                  description,
                  style: descStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Image.asset(
                  'assets/images/profile.png',
                  height: 200,
                )),
                Form(
                    key: _formKey,
                    child: Column(children: [
                      //email
                      TextFormField(
                        validator: (value) =>
                            value!.isEmpty ? 'Enter a valid email' : null,
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                      ),
                      //password
                      TextFormField(
                        validator: (value) =>
                            value!.length < 7 ? 'Enter a valid password' : null,
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                      ),

                      //google
                      const SizedBox(height: 20),
                      const Text(
                        "Login in with",
                        style: descStyle,
                      ),
                      GestureDetector(
                        onTap: () {
                          //_auth.signInWithGoogle();
                        },
                        //sign in with google

                        child: Center(
                          child: Image.asset(
                            'assets/images/google.png',
                            height: 50,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      //register
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: descStyle,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: mainBlue, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      //sign in button
                      GestureDetector(
                        //method to login
                        onTap: () {},

                        child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: bgBlack,
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 2, color: mainYellow)),
                            child: Center(
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      //anon sign
                      GestureDetector(
                        //method to login
                        onTap: () {},

                        child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: bgBlack,
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 2, color: mainYellow)),
                            child: Center(
                              child: const Text(
                                "Login as Guest",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                      )
                    ]))
              ],
            ),
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

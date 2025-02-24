import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase/models/UserModel.dart';

class AuthService {
  //create firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create a user from firebase user with uid
  UserModel? _userWithFirebaseUserUid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

//create the stream for auth chnages in the user
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirebaseUserUid);
  }

//sign in ano
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userWithFirebaseUserUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

//reg usign email pass
//signIn using email [pass]
//sign in gmail pass
//signout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}

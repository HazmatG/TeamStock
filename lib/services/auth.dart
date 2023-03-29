import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // gives all properties of FirebaseAuth class
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // User _userFromFirebaseUser(User user) {
  //   return user != null ? User()
  // }

  Future RegisterWithEmailandPassword(String email, String password) async {
    try {
      UserCredential authresult = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? firebaseuser = authresult.user;
    }
    catch (e) {

    }
  }
}
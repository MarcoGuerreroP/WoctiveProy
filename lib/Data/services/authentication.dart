
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/Data/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

 UserProfile _userFirebase(User user) {
    return user != null ? UserProfile(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.authStateChanges();
      //.map((FirebaseUser user) => _userFromFirebaseUser(user));
      
  }






  Future signUp(String email, String password) async {
    try {
      final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
     
      User user = result.user;
      return _userFirebase(user);
      
    }catch(error){
      print(error.toString());
      return null;
    }





  }


  Future signIn(String email, String password) async {
    try {
      final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
     
      User user = result.user;
      return _userFirebase(user);
      
    }catch(error){
      print(error.toString());
      return null;
    }





  }

  


}
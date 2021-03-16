
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Data/models/user.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';

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
      final UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User user = result.user;
      return _userFirebase(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future signIn(String email, String password) async {
    try {
      final UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User user = result.user;
      return _userFirebase(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
  Future<void> signOut(BuildContext context) async {
  await _auth.signOut();
  User user = _auth.currentUser;
  return AlertDialog(content:Text('Desea cerrar sesion + ${user.email} '),
  actions: [
    ElevatedButton.icon(onPressed: (){
      Navigator.pushReplacementNamed(
                        context, LoginScreen.routeName);
    }, 
    icon: Icon(Icons.logout), 
    label: Text('salir'))
  ],)
  ;
}

  
}

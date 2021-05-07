// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart'; 
// import 'package:device_info/device_info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Data/models/user.dart';
// import 'package:package_info/package_info.dart';
// import 'package:flutter_auth/Screens/Login/login_screen.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseAuth get auth => _auth;

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
          
      // await DatabaseService(uid: user.uid).createAddProtect('inicial', 'ejmeplo', 'undia', 'un equipo');
     
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
    return print(user);
  }

  Future firebaseUsuario() async {
  final usuario =  FirebaseAuth.instance.currentUser.displayName;
  return usuario;
}








}

// class UserHelper {
//   static FirebaseFirestore _db = FirebaseFirestore.instance;

//   static saveUser(User user) async {
//     PackageInfo packageInfo = await PackageInfo.fromPlatform();
//     int buildNumber = int.parse(packageInfo.buildNumber);
//     Map<String, dynamic> userData = {
//       "name": user.displayName,
//       "email": user.email,
//       "last_login": user.metadata.lastSignInTime.millisecondsSinceEpoch,
//       "created_at": user.metadata.creationTime.millisecondsSinceEpoch,
//       "role": "user",
//       "build_number": buildNumber,
//     };

//     final userRef = _db.collection("users").doc(user.uid);
//     if ((await userRef.get()).exists) {
//       await userRef.update({
//         "last_login": user.metadata.lastSignInTime.millisecondsSinceEpoch,
//         "build_number": buildNumber,
//       });
//     } else {
//       await userRef.set(userData);
//     }
//     await _saveDevice(user);
//   }

//   static _saveDevice(User user) async {
//     DeviceInfoPlugin devicePlugin = DeviceInfoPlugin();
//     String deviceId;
//     Map<String, dynamic> deviceData;
//     if (Platform.isAndroid) {
//       final deviceInfo = await devicePlugin.androidInfo;
//       deviceId = deviceInfo.androidId;
//       deviceData = {
//         "os_version": deviceInfo.version.sdkInt.toString(),
//         "platform": "android",
//         "model": deviceInfo.model,
//         "device": deviceInfo.device
//       };
//     }
//     if (Platform.isIOS) {
//       final deviceInfo = await devicePlugin.iosInfo;
//       deviceId = deviceInfo.identifierForVendor;
//       deviceData = {
//         "os_version": deviceInfo.systemVersion,
//         "platform": "ios",
//         "model": deviceInfo.model,
//         "device": deviceInfo.name,
//       };
//     }
//     final nowMs = DateTime.now().millisecondsSinceEpoch;

//     final deviceRef = _db
//         .collection("users")
//         .doc(user.uid)
//         .collection("devices")
//         .doc(deviceId);

//     if ((await deviceRef.get()).exists) {
//       await deviceRef.update({
//         "updated_at": nowMs,
//         "uninstalled": false,
//       });
//     } else {
//       await deviceRef.set({
//         "created_at": nowMs,
//         "updated_at": nowMs,
//         "unistalled": false,
//         "id": deviceId,
//         "device_info": deviceData
//       });
//     }
//   }
// }

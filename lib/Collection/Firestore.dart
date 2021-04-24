import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CollecionService{


FirebaseFirestore colecciones = FirebaseFirestore.instance;



Future<void> userSetup(String displayName) async {


  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  users.add({'displayName': displayName, 'uid': uid});
  return;
}
}
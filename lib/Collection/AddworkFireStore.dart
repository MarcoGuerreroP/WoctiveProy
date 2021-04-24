import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  final String nameWork;
  final String nameProyect;
  final String priority;
  final int dateandtime;

  AddUser(this.nameWork, this.nameProyect, this.priority, this.dateandtime);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'nameWork': nameWork,
            'nameProyect': nameProyect,
            'priority': priority,
            'dateTime': dateandtime, // 42
          })
          .then((value) => print("Informacion Agregada"))
          .catchError((error) =>
              print("No fue posible agregar la informacion: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Agregar Tarea",
      ),
    );
  }
}

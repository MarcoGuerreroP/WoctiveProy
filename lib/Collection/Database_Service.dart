
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_auth/Data/models/proyect.dart';


class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  CollectionReference addproyectCollection = FirebaseFirestore.instance.collection('Proyects');



  Future createAddProtect(String title, String materia, String deadline, String nameteam) async {
    
    await addproyectCollection
    .doc(uid)
    .set({
    
     "title": title,
     "materia": materia,
     "deadline": deadline,
     "nameteam": nameteam, 
    });
  }

List<Proyect> proyectsAdds(QuerySnapshot snapshot){
  if(snapshot != null){
    return snapshot.docs.map((e){
      return Proyect(
        title: e.data()["name"],
        uid: e.id,
        materia: e.data()["materia"],
        nameteam: e.data()["nameteam"],
        deadline: e.data()["deadline"],

      );

    }).toList();
  }else{
    return null;
  }
}

  Stream<List<Proyect>> listproyect(){
   return addproyectCollection.snapshots().map(proyectsAdds);

  }
}

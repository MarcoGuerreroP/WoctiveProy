import 'package:flutter/material.dart';
import 'package:flutter_auth/Collection/Database_Service.dart';
import 'package:flutter_auth/Data/models/proyect.dart';
// import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/loading.dart';


class ListViewProyects extends StatefulWidget {
  ListViewProyects({Key key}) : super(key: key);

  @override
  _ListViewProyectsState createState() => _ListViewProyectsState();
}

class _ListViewProyectsState extends State<ListViewProyects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<Proyect>>(
        stream: DatabaseService().listproyect(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Loading();
          }
          List<Proyect> proyect = snapshot.data;
          
          return ListView.builder(
            padding: const EdgeInsets.all(20.0),
            shrinkWrap: true,
            itemCount: proyect.length,
            itemBuilder:(context, index){
             return Dismissible(
               key: Key(proyect[index].title), 
               background:Container(
                 padding: EdgeInsets.only(left: 100),
                alignment: Alignment.centerLeft,
                child: Icon(Icons.delete),
                color: Colors.red,
               ),
               onDismissed:(direction) async {
                 await DatabaseService().removeProyect(proyect[index].uid);
               },
               

               
             
            
             child: Flex(
                  direction: Axis.vertical,
                  children: [
                    SizedBox(height: 20,),
                  TextButton(
                    onPressed: (){},
                    child: Container(
                        height: 157,
                        decoration:BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                        
                        
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                              child: Text('${proyect[index].title ?? 'Nombre del equipo: '}',
                              style: TextStyle(color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 0),
                              child: Text('Fecha de entrega: ${proyect[index].deadline}',
                              style: TextStyle(color: Colors.black),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 0),
                              child: Text('Materia: ${proyect[index].materia}',
                              style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0, 0),
                                  child: Text('Equipo: ${proyect[index].nameteam}',
                                  style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                
                              ],
                            )

                          ],
                        )
          ),
                  ),
          ],
                ),
              );
              
            },
            
            );
        }
      ),
    );
    
    
  }
}
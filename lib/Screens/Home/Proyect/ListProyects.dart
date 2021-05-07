import 'package:flutter/material.dart';
import 'package:flutter_auth/Collection/Database_Service.dart';




class ListProyects extends StatefulWidget {
  ListProyects({Key key}) : super(key: key);

  @override
  _ListProyectsState createState() => _ListProyectsState();
}

class _ListProyectsState extends State<ListProyects> {
  TextEditingController _nameProyectController = TextEditingController();
  TextEditingController _nameSubjectController = TextEditingController();
  TextEditingController _datelineSubjectController = TextEditingController();
  TextEditingController _nameofTeamController = TextEditingController();


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Proyecto"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20.0),
                nameProyect(),
                SizedBox(height: 15.0),
                nameSubject(),
                SizedBox(height: 15.0),
                datelineSubject(),
                SizedBox(height: 15.0),
                nameofTeam(),
                SizedBox(height: 40.0),
                createButtonProy(),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nameProyect(){
    return Row
    (mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
                Icon(Icons.people,
              color: Colors.orange,
              size: 50.0),
              
              Container(
                width: 200,
                height: 50,
                child: TextField(
                  controller: _nameProyectController,
                    style: TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white70),
                      hintStyle: TextStyle(color: Colors.white70),
                      labelText: 'Nombre del proyecto',
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
              ),
              ],);
  }

  Widget nameSubject() {
    return Row
    (mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
                Icon(Icons.class_,
              color: Colors.orange,
              size: 50.0),
              
              Container(
                width: 200,
                height: 50,
                child: TextField(
                  controller: _nameSubjectController,
                    style: TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white70),
                      hintStyle: TextStyle(color: Colors.white70),
                      labelText: 'id de la materia',
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
              ),
              ],);

              
  }

  Widget datelineSubject(){
     return Row
    (mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
                Icon(Icons.pending_actions,
              color: Colors.orange,
              size: 50.0),
              
              Container(
                width: 200,
                height: 50,
                child: TextField(
                  controller: _datelineSubjectController,
                    style: TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white70),
                      hintStyle: TextStyle(color: Colors.white70),
                      labelText: 'Fecha de vencimiento',
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
              ),
              ],);

  }

  Widget nameofTeam(){
    return Row
    (mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
                Icon(Icons.group_sharp,
              color: Colors.orange,
              size: 50.0),
              
              Container(
                width: 200,
                height: 50,
                child: TextField(
                  controller: _nameofTeamController,
                    style: TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white70),
                      hintStyle: TextStyle(color: Colors.white70),
                      labelText: 'Nombre del equipo',
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
              ),
              ],);

  }

  Widget createButtonProy(){
    return Container(
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed:() async {
          if(_nameProyectController.text.isNotEmpty){
            await DatabaseService().createAddProtect(
              _nameProyectController.text.trim(),_nameSubjectController.text.trim(),_datelineSubjectController.text.trim(),_nameofTeamController.text.trim());

            
          }
        }, 
        child:Text('Crear Proyecto',style: TextStyle(color: Colors.black),),
        
        style: ElevatedButton.styleFrom(
           shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.all(Radius.circular(40.0))),
           primary: Colors.white,
           

        ),
      ),
    );
  }

 
}

 
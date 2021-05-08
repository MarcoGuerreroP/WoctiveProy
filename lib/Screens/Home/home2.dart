import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/Drawer/AddTeamandWork.dart';
import 'package:flutter_auth/Screens/Home/Drawer/drawer_screen.dart';
import 'package:flutter_auth/Screens/Home/Proyect/ListProyects.dart';
import 'package:flutter_auth/Screens/Home/Proyect/ListViewProyects.dart';
// import 'package:flutter_auth/Screens/Home/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home2 extends StatefulWidget {
  Home2({Key key}) : super(key: key);

  static final routeName = 'home2';

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int currentIndex;

  @override
  void initState() {
    super.initState();

    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // ignore: sdk_version_set_literal
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddTeamandWork()))
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orange.shade900,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.2,
        backgroundColor: Colors.grey.shade900,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        currentIndex: currentIndex,
        hasInk: true,
        inkColor: Colors.black,
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        onTap: changePage,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home_rounded, color: Colors.orange),
            activeIcon: Icon(Icons.home_rounded, color: Colors.white),
            title: Text(AppLocalizations.of(context).start),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.white,
            icon: TextButton(
              child: Text(AppLocalizations.of(context).proyects),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListProyects()));
              },
            ),
            activeIcon: Icon(Icons.note_add_rounded, color: Colors.white),
            title: Text('Mis proyectos'),
          ),
        ],
      ),
      body: ListViewProyects(),
      appBar: AppBar(
          title: Text(
            'WOCTIVE',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.orange),
      drawer: DrawerScreen(),
    );
  }
}

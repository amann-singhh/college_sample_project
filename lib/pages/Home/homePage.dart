import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void contactsScreen(BuildContext context) {
  //   Navigator.of(context).pushNamed('/alumini');
  // }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 5,
        // initialIndex: 0,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  color: Color(0xFF120E16),
                  child: Text(
                    'Scheduling Events Has Never Been This Easy!',
                    style: TextStyle(
                      color: Color(0xFFF6F6F7),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Color(0xFF613FE5), size: 32),
                  title: Text(
                    'About Us',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/aboutUs');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Color(0xFF613FE5),
                    size: 32,
                  ),
                  title: Text(
                    'Our College',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/ourCollege');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(Icons.person_outline,
                      color: Color(0xFF613FE5), size: 32),
                  title: Text(
                    'Alumini of NMIMS',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/alumini');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading:
                      Icon(Icons.newspaper, color: Color(0xFF613FE5), size: 32),
                  title: Text(
                    'College Clubs',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/collegeClubs');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(Icons.feedback_outlined,
                      color: Color(0xFF613FE5), size: 32),
                  title: Text(
                    'Feedback/Suggestions',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/feedback');
                  },
                ),
              ],
            ),
          ),




        ));
  }
}
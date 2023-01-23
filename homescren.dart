import 'package:flutter/material.dart';
class   home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FMS_ST"),
        actions: [
          IconButton(onPressed:(){}, icon:Icon(Icons.settings))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children:const <Widget> [
                     UserAccountsDrawerHeader(
                             accountName:Text("Salma Fathi",
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.white,
                            )
                             ) ,
                            accountEmail:Text("salmaschool@gmail",
                               style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 10,
                               color: Colors.white,
                                 )
                                ),
                              currentAccountPicture: CircleAvatar(
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/67196308?s=400&u=c3577f9c466c235836ffe9df779b2a3b140de99d&v=4'),  //pi
                              ),
                              otherAccountsPictures:<Widget> [
                               CircleAvatar(
                             backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiObb69D_8PSFA-Sjdev1rtBWEjsWuj593Nw&usqp=CAU'), //pi
                          ),
                              ],
                     ),
                                ListTile(
                                  title: Text('Sent '),
                                  leading: Icon(Icons.send),
                                ),
                                ListTile(
                                  title: Text('Inbox'),
                                  leading: Icon(Icons.inbox),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                ListTile(
                                  title: Text('Stared'),
                                  leading: Icon(Icons.star),
                                ),
                                ListTile(
                                  title: Text('Archive'),
                                  leading: Icon(Icons.archive),
                                ),

                                ListTile(
                                  title: Text('Chat'),
                                  leading: Icon(Icons.chat),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                ListTile(
                                  title: Text('Log out'),
                                  leading: Icon(Icons.logout),
                                )

          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.blue,
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
                icon: Icon(Icons.home),
                 label: 'Home'

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: ''

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Profile'

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting'

          )

        ],
      ) ,
      floatingActionButton:FloatingActionButton(
        onPressed: () {  },
        child: Icon( Icons.add),

      ) ,
    );
  }
}

import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: const <Widget>[
              // DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.deepPurple
              //   ),child: Text("Profile", style: TextStyle(color: Colors.white),), 
              // ),
              UserAccountsDrawerHeader(accountName: Text("Waqar Ahsan"), accountEmail: Text("waqar1711831@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1664536392779-049ba8fde933?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ),),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("General"),
                subtitle: Text("name, password "),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.security),
                title: Text("Two-Way Encription"),
                subtitle: Text("***********"),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("History"),
                subtitle: Text("Today "),
                trailing: Icon(Icons.arrow_right),
              )
            ],
          ),
        );
  }
}
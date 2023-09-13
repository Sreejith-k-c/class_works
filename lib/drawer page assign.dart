import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Drawer_assign(),));
}

class Drawer_assign extends StatelessWidget {
  const Drawer_assign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      drawer: Drawer(
        child: Container(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
               gradient: LinearGradient(
                 end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                 colors: [Colors.yellow, Colors.orange, Colors.red]
               )),
              accountName: Text("Sundar Pichai"),
              accountEmail: Text("CEO of Alphabet inc."),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
              ),
            ),
           const ListTile(
              leading: Icon(Icons.space_dashboard_outlined),
              title: Text("Dashboard"),
            ),
            ListTile(
              leading: Icon(Icons.leak_add_sharp),
              title: Text("Lead"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              title: Text("Clients"),
            ),
            ListTile(
              leading: Icon(Icons.rocket_launch),
              title: Text("Projects"),
            ),
            ListTile(
              leading: Icon(Icons.man),
              title: Text("Patients"),
            ),
            ListTile(
              leading: Icon(Icons.subscriptions),
              title: Text("Subscription"),
            ),
            ListTile(
              leading: Icon(Icons.payments_rounded),
              title: Text("Payments"),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_sharp),
              title: Text("Users"),
            ),
            ListTile(
              leading: Icon(Icons.library_books_rounded),
              title: Text("Library"),
            ),
        ),
      ),
    );
  }
}
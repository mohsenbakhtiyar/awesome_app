import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Mohsen Bakhtiyar"),
            accountEmail: Text("mohsen.bakhtiar7@gmail.com"),
            decoration: BoxDecoration(color: Colors.purple),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://s4.uupload.ir/files/best-premium-multipurpose-theme-featured-image_ftfo.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Mohsen Bakhtiyar"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Email"),
            subtitle: Text("mohsen.bakhtiar7@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

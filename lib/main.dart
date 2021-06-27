import 'package:flutter/material.dart';

void main() {
  // WidgetApp // MaterialApp // CupertinoApp
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change my name";
  TextEditingController _nameControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "bg.jpg",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameControler,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Some Text",
                        labelText: "Name",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameControler.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}

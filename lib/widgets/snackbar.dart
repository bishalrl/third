import 'package:flutter/material.dart';

class SnackbarWidgit extends StatelessWidget {
  const SnackbarWidgit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("drawer demo"),
        ),
        drawer: Drawer(
          backgroundColor: Colors.pinkAccent,
          child: Container(
            color: Color.fromARGB(255, 234, 152, 152),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                      child: Container(
                    child: Center(
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/dalli.jpg',
                              fit: BoxFit.contain,
                              height: 100,
                              width: 100,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text("Name:Done Done"),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(" Work: Flutter dev"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  ListTile(
                    leading: Icon(Icons.people),
                    onTap: () {},
                    title: Text("About"),
                  ),
                  ListTile(
                    leading: Icon(Icons.rectangle),
                    title: Text("Home"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.contact_mail),
                    onTap: (() {}),
                    title: Text("Contact"),
                  )
                ],
              ),
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: MaterialButton(
              onPressed: () {
                final snackBar = SnackBar(
                  duration: const Duration(seconds: 5),
                  backgroundColor: Colors.greenAccent,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  action: SnackBarAction(
                    label: ("Undo"),
                    onPressed: () {},
                    textColor: Colors.blue,
                  ),
                  content: Text("this is snackbar tutorial"),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Center(
                child: Text(
                  "Snackbar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

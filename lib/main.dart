import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bazar'),
        titleSpacing: 20,
        // centerTitle: true,
        toolbarHeight: 50,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("I am comment", context);
            }, 
            icon: Icon(Icons.comment)
          ),
          IconButton(
            onPressed: () {
              MySnackBar("I am search", context);
            }, 
            icon: Icon(Icons.search)
          ),
          IconButton(
            onPressed: () {
              MySnackBar("I am settings", context);
            }, 
            icon: Icon(Icons.settings)
          ),
          IconButton(
            onPressed: () {
              MySnackBar("I am email", context);
            }, 
            icon: Icon(Icons.email)
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: () {
          MySnackBar('I am floating action button', context);
        },
      ),
      // body: Text("This Is Body"),
      // drawer: (),
      // endDrawer: (),
      // bottomNavigationBar: (),
    );    
  }
}
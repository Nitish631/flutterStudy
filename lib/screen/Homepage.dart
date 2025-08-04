import 'package:flutter/material.dart';
import 'package:wigets_and_layouts/widgets/drawer.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 days flutter by nitish"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
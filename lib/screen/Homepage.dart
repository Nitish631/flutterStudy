import 'package:flutter/material.dart';
import 'package:wigets_and_layouts/widgets/drawer.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App",),
        // backgroundColor: Theme.of(context).primaryColor,
      ),
      // body: Container(
      //   constraints: BoxConstraints(
      //     maxHeight: 180,
      //     minHeight: 90,
      //     maxWidth: 180,
      //     minWidth: 90,
      //   ),
      //   // color: Colors.blue,
      //   child: Container(
      //     height: 100,
      //     width: 100,
      //     color: Colors.red,
      //   ),
      // ),
      body: Center(
        child: Container(
          // child: Text(context.runtimeType.toString()),
          child: Text("Welcome to the 30 days flutter program."),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
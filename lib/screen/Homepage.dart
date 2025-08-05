import 'package:flutter/material.dart';
import 'package:wigets_and_layouts/models/catalouge.dart';
import 'package:wigets_and_layouts/widgets/drawer.dart';
import 'package:wigets_and_layouts/widgets/item_widgets.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(30,(index)=>CatalougeModel.Items[0]);
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
      body:ListView.builder(
        // itemCount: CatalougeModel.Items.length,
        itemCount: dummyList.length,
        itemBuilder:(context,index){
          // return ItemWidgets(item: CatalougeModel.Items[index],);
          return ItemWidgets(item: dummyList[index]);
        }
        ),
      drawer: MyDrawer(),
    );
  }
}
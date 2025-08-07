import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wigets_and_layouts/models/catalouge.dart';
import 'package:wigets_and_layouts/widgets/drawer.dart';
import 'package:wigets_and_layouts/widgets/item_widgets.dart';
import 'dart:convert';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 2));
  final catalougeJson = await rootBundle.loadString("assets/files/catalouge.json");
  final decodedData = jsonDecode(catalougeJson);
  final productsData = decodedData["products"];

  setState(() {
    CatalougeModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
  });
}
  @override
  Widget build(BuildContext context) {
    // debugPrint("BUILDING WIDGETS WITH ${CatalougeModel.Items.length} ITEMS");
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:(CatalougeModel.items!=null&&CatalougeModel.items.isNotEmpty)? ListView.builder(
        // itemCount: CatalougeModel.Items.length,
        itemCount: CatalougeModel.items.length,
        itemBuilder:(context,index){
          // return ItemWidgets(item: CatalougeModel.Items[index],);
          return ItemWidgets(item: CatalougeModel.items[index]);
        }
        ):Center(
          child: CircularProgressIndicator(),
        )
      ),
      drawer: MyDrawer(),
    );
  }
}
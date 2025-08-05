import 'package:flutter/material.dart';
import 'package:wigets_and_layouts/models/catalouge.dart';
class ItemWidgets extends StatelessWidget {
  // const ItemWidgets({super.key,required this.item});
  const ItemWidgets({Key? key, required this.item}):assert(item!=null) ,super(key: key);

  final Item item;
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        hoverColor: Color.fromRGBO(8, 0, 255, 0.173),
        leading: Image.network(
          item.image,
          // width: 700,
          // height: 700,
          fit:BoxFit.contain,
          errorBuilder: (context, error, stackTrace){
            return const Icon(Icons.broken_image,size: 300,);
          },
          ),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
    );
  }
}
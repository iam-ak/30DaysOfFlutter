import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalogs.dart';

class ItemWidget extends StatelessWidget {

  final Item item;

  const ItemWidget({super.key, required this.item}) 
  : assert (item != null);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        //elevation: 0.0,
        child: ListTile(
          onTap: () {
            print(item.name+" presseed");
          },
          leading: Image.asset(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
      
          ),
          ),
        ),
      ),
    );
  }
}
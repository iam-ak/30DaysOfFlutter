import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalogs.dart';
import 'package:flutter_catalog/pages/widgets/drawer.dart';
import 'package:flutter_catalog/pages/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days=30;
  final String name="Akshay";

  @override
  Widget build(BuildContext context) {

    final dummyList=List.generate(5, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: ListView.builder(
          itemCount: dummyList.length, 
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
              );
          },
        ),
        drawer: MyDrawer(),
      );
  }
}
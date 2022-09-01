import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalogs.dart';
import 'package:flutter_catalog/pages/widgets/drawer.dart';
import 'package:flutter_catalog/pages/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days=30;

  final String name="Akshay";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async
  {
    await Future.delayed(Duration(seconds: 2));
    
    final catalogJson=await rootBundle.loadString("assets/files/catalog.json");
    final decodeData=jsonDecode(catalogJson);
    var productsData=decodeData["products"];
    CatalogModel.items= List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {

    //final dummyList=List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: (CatalogModel.items==null || CatalogModel.items.isEmpty) ?
        Center(
          child: CircularProgressIndicator()
          )
          :
          GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ), 
            itemBuilder: (context, index) {
            Item item=CatalogModel.items[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: GridTile(
                header: Container(
                  child: Text(
                    item.name,
                    style: TextStyle(color: Colors.white),
                    ),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  ),
                child: Image.network(item.image),
                footer: Container(
                  child: Text(
                    "\$ "+item.price.toString(),
                    style: TextStyle(color: Colors.white),
                    ),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  ),
                ),
            );
          },
          itemCount: CatalogModel.items.length,
          ),
        //  ListView.builder(
        //   itemCount: CatalogModel.items.length, 
        //   itemBuilder: (context, index) {
        //     return ItemWidget(
        //       item: CatalogModel.items[index],
        //       );
        //   },
        // ),
        drawer: MyDrawer(),
      );
  }
}
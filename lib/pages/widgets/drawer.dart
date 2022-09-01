import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    final imageUrl="https://www.searchenginejournal.com/best-image-search-engines/299963/";

    return Drawer(
      //backgroundColor: Colors.amber,
      elevation: 20,
      child: Container(
        color: Colors.amber,
        child: ListView(
          //padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                color: Colors.amber
              ),
              accountName: Text("Akshay Kalbande"),
               accountEmail: Text("aks222345@gmail.com"),
              currentAccountPicture: CircleAvatar(
                //backgroundImage: NetworkImage(imageUrl),
              ),
              margin: EdgeInsets.zero,
            ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home",textScaleFactor: 1.2,),
              //trailing: Icon(CupertinoIcons.video_camera),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings,),
              title: Text("Settings",textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,),
              title: Text("Mail",textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,),
              title: Text("Profile",textScaleFactor: 1.2,),
            )
          ],
        ),
      ),
    );
  }
}
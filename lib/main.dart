import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/widgets/themes.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoue,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.homeRoue:(context) => HomePage()
      },

    );
  }
}
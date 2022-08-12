import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
String name="";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
            fit: BoxFit.cover,
            height: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Welcome $name",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                      //floatingLabelAlignment: FloatingLabelAlignment.center
                    ),
                    onChanged: (value){
                      name=value;
                      setState(() {
                        
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                      //floatingLabelAlignment: FloatingLabelAlignment.center
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, MyRoutes.homeRoue);
            }, child: Text("Login"),
            style: TextButton.styleFrom(minimumSize: Size(120, 40)),
            )
          ],
        ),
      )
    );
  }
}
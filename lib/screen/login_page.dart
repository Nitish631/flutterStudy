import 'package:flutter/material.dart';
import 'package:wigets_and_layouts/screen/Homepage.dart';
import 'package:wigets_and_layouts/util/routes.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/login.png",fit: BoxFit.cover),
            SizedBox(height: 10,),
            Text("Welcome",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Input username",
                      labelText:"Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Input password",
                      labelText: "Password"
                    ),
                  ),
                  SizedBox(height: 40,),
                  ElevatedButton(onPressed:(){
                    Navigator.pushNamed(context,MyRoutes.homeRoute);
                  },
                   child:Text("login",),
                   style: TextButton.styleFrom(
                    minimumSize: Size(150,40)
                   ),
                   ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
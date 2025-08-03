import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
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
                SizedBox(height: 10,),
                ElevatedButton(onPressed:(){},
                 child:Text("login",),
                //  style: TextButton.styleFrom(),
                 ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
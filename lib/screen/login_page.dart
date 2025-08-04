import 'package:flutter/material.dart';
import 'package:wigets_and_layouts/screen/Homepage.dart';
import 'package:wigets_and_layouts/util/routes.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate()){
      setState(() {
      changeButton=true;
    });
    await Future.delayed(Duration(milliseconds: 500));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton=false;
    });
    }
}
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/image/login.png",fit: BoxFit.cover),
              SizedBox(height: 10,),
              Text("Welcome $name",style: TextStyle(
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
                      validator: (value) {
                        if(value==null||value.isEmpty){
                          return "username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                        setState(() {
                          name=value;
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Input password",
                        labelText: "Password"
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return"Password cannot be empty";
                        }else if(value.length<6){
                          return"Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40,),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton?25:8),
                      child: InkWell(
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: changeButton?80:120,
                          height: 50,
                          alignment: Alignment.center,
                          child:changeButton?Icon(Icons.done,color:Colors.white): Text("login",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:18 ) ,),
                          // decoration: BoxDecoration(
                          //   shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                          //   // borderRadius: BorderRadius.circular(changeButton?22:8),
                          // ),
                        ),
                        onTap: () =>moveToHome(context),
                      ),
                    ),
                    // ElevatedButton(onPressed:(){
                    //   Navigator.pushNamed(context,MyRoutes.homeRoute);
                    // },
                    //  child:Text("login",),
                    //  style: TextButton.styleFrom(
                    //   minimumSize: Size(150,40)
                    //  ),
                    //  ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
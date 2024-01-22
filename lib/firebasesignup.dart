import 'package:flutter/material.dart';
import 'package:vadivelu_calculator/auth.dart';
import 'package:vadivelu_calculator/sign%20in.dart';
class fireb extends StatefulWidget {
  const fireb({super.key});

  @override
  State<fireb> createState() => _firebState();
}

class _firebState extends State<fireb> {
  final _oky = GlobalKey<FormState>();
  final emailctrl=TextEditingController();
  final passctrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(
          child: Text("Sign Up",
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold),),
        ),
      ),
      body:SafeArea(
        child: Form(
          key: _oky,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding (
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailctrl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      labelStyle: TextStyle(fontSize: 15),
                      hintText: "Enter Your Email",
                      hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (email)
                  {
                    if(email == null || email.isEmpty)
                      {
                        return("Please Enter Your vaild Email");
                      }
                    else if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email))
                      {
                        return "Email Address Not Vaild";
                      }
                  }
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passctrl,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 15),
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (passw)
                    {
                      if(passw == null || passw.isEmpty)
                        {
                          return ("Please Enter password");
                        }
                      else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(passw))
                      {
                        return "Password should contain Capital, Small letter & Number & Special";
                      }
                    }
                ),
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>signin()));
                      },
                      child: Text(" Login",
                        style: TextStyle(color: Colors.blue),))
                ],
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                if(_oky.currentState!.validate())
                  {
                   AuthController.instance.register(emailctrl.text.trim(), passctrl.text.trim());
                  }
              }, child: Text("Sign up")),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue with Google",
                    style: TextStyle(fontSize: 15),),
                ],
              ),
               SizedBox(height: 10,),
               GestureDetector(
                 onTap: (){

                 },
                 child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/Google..jpg"),
                        fit: BoxFit.fill),
                  ),
                 ),
               )
            ],
          ),
        ),
      ),
    );
  }
}

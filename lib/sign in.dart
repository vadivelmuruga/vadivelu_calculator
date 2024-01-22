import 'package:flutter/material.dart';
import 'package:vadivelu_calculator/auth.dart';
import 'firebasesignup.dart';
class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final _haha = GlobalKey<FormState>();
  final emctrl = TextEditingController();
  final pactrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text("LogIn",
            style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold),),
        ),
      ),
      body:SafeArea(
        child: Form(
          key: _haha,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emctrl,
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
                  controller: pactrl,
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
                  Text("Don't have an account?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>fireb()));
                    },
                    child: Text(" Create new one",
                      style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                if(_haha.currentState!.validate())
                {
                 AuthController.instance.login(emctrl.text.trim(), pactrl.text.trim());
                }
              }, child: Text(" Login")),
            ],
          ),
        ),
      ),
    );
  }
}

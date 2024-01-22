import 'package:flutter/material.dart';
import 'package:vadivelu_calculator/auth.dart';

class wel extends StatefulWidget {
  const wel({super.key});

  @override
  State<wel> createState() => _welState();
}

class _welState extends State<wel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26  ,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text("Welcome",
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,color: Colors.green),
            )
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              {
                AuthController.instance.logOut();
              }
            },
                child: Text("Sign out"),)
          ],
        ),
      ),
    );
  }
}

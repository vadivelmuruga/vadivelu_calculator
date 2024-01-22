import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vadivelu_calculator/firebasesignup.dart';
import 'package:vadivelu_calculator/wel.dart';
import 'package:google_sign_in/google_sign_in.dart';
class AuthController extends GetxController{
  static AuthController instance = Get.find();
   late Rx<User?> _User;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
   FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onReady(){
    super.onReady();
    _User = Rx<User?>(auth.currentUser as User?);
    _User.bindStream(auth.userChanges() as Stream<User?>);
    ever(_User, _initialScreen);

  }
  _initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(() =>fireb());
    }else{
      Get.offAll(()=>wel());
    }
  }
  void register(String email,password)async{
     try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
     }catch(e){
       Get.snackbar("About User", "User message",
       backgroundColor: Colors.redAccent,
       snackPosition: SnackPosition.BOTTOM,
       titleText: Text("Account creation failed",
         style: TextStyle(color: Colors.white),
       ),
         messageText: Text(e.toString(),
           style: TextStyle(color: Colors.white),
         )
       );
     }
  }
  void login(String email,password)async{
     try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
     }catch(e){
       Get.snackbar("About Login", "Login message",
       backgroundColor: Colors.redAccent,
       snackPosition: SnackPosition.BOTTOM,
       titleText: Text("Login failed",
         style: TextStyle(color: Colors.white),
       ),
         messageText: Text(e.toString(),
           style: TextStyle(color: Colors.white),
         )
       );
     }
  }
  void logOut()async{
    await auth.signOut();
    await _googleSignIn.signOut();
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await
    GoogleSignIn(clientId: "855773142197-u1jlkpvhkgdbkhuhunh6jrcl8nbspjsj.apps.googleusercontent.com").signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

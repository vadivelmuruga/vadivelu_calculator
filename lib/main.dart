import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vadivelu_calculator/auth.dart';
import 'package:vadivelu_calculator/calbmi.dart';
import 'package:vadivelu_calculator/calcu.dart';
import 'package:vadivelu_calculator/calculist.dart';
import 'package:vadivelu_calculator/gstcal.dart';
import 'package:vadivelu_calculator/sign%20in.dart';
import 'package:vadivelu_calculator/wel.dart';

import 'calhome.dart';
import 'firebasesignup.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // if(kIsWeb){
  //   await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //         apiKey: "AIzaSyBC4fCdqlVjtqPUJ6co_QWIL4sPJVoIkGE",
  //         appId: "1:855773142197:web:dc66cecbd4a6ba3a1fb2fc",
  //         messagingSenderId: "855773142197",
  //         projectId: "fir-getx-app-4a030",)
  //   ).then((value) => Get.put(AuthController()));
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: clc()
    );
  }
}

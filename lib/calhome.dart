import 'package:flutter/material.dart';
import 'calbmi.dart';
import 'calcu.dart';
import 'calculist.dart';
import 'gstcal.dart';
class calchome extends StatefulWidget {
  const calchome({super.key});

  @override
  State<calchome> createState() => _calchomeState();
}

class _calchomeState extends State<calchome> {
int _index =0;
final adz=[
  cal(),
  clc(),
  gst(),
  bmi()
];
void press(index)
{
setState(() {
  _index=index;
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: adz[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calculate,
            color: Colors.black,),label:"Calculator",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined,
            color: Colors.black,),label:"List",backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_rounded,
            color: Colors.black,),label:"Gst",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_sharp,
            color: Colors.black,),label:"Bmi",backgroundColor: Colors.red),
        ],
        currentIndex: _index,
        onTap: press,
      ),
    );
  }
}

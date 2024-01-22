import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  final hei = TextEditingController();
  final wei = TextEditingController();
   double Total = 0.0;
   String resultCategory = "";
   Color backgroundColor = Colors.white;
  void calculateBmi()
  {
  setState(() {
    double height = double.parse(hei.text)/100;
    double weight = double.parse(wei.text);
    double bmi = weight /(height*height);
    Total=bmi;
    resultCategory=getBmiCategory(bmi);
    backgroundColor = getResultbackgroundColor(resultCategory);
  });
  }
String getBmiCategory(double bmi)
{
  if (bmi < 18.5)
  {
    return "Underweight";
  }
  else if (bmi>=18.5 && bmi<24.9)
  {
    return "Normalweight";
  }
  else
  {
    return "Overweight";
  }
}
Color getResultbackgroundColor(String category)
{
  switch(category){
    case "Underweight":
    return Colors.orange;
    case "Normalweight":
      return Colors.green;
    case "Overweight":
      return Colors.red;
    default:
      return Colors.white;
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: Icon(Icons.calculate),
        title: Center(
          child: Text("BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 18),),),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: hei,
                decoration: InputDecoration(
                  labelText: " Enter Height in (Cm)",
                  labelStyle: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: wei,
                decoration: InputDecoration(
                  labelText: "Enter Weight in (Kg)",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              setState(() {
                calculateBmi();
               showDialog(
                   context: context,
                   builder: (BuildContext context)
               {
                 return AlertDialog(
                   backgroundColor: backgroundColor,
                   title: Center(child: Text("BMI")),
                   content: Container(
                     height: 100,
                     width: double.infinity,
                     child: Column(
                       children: [
                         Text("BMI: $Total",
                           style: TextStyle(fontWeight: FontWeight.bold,
                               fontSize: 15),),
                         Text("Category: $resultCategory",
                           style: TextStyle(fontSize: 15,
                               fontWeight: FontWeight.bold),)
                       ],
                     ),
                   ),
                   actions: [
                     TextButton(onPressed: () => Navigator.pop(context,"Ok"),
                         child: Text("Ok"))
                   ],
                 );
               });
              });
            }, child: Text("Calculate",
              style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

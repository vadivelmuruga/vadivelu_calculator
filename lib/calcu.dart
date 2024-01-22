import 'dart:math';
import 'package:flutter/material.dart';
class cal extends StatefulWidget {
  const cal({super.key});

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {

  final ctrl = TextEditingController();

  String num1="",num2="",optr="";

  bool clk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Calculator",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          leading: Icon(Icons.calculate),
          actions: [Icon(Icons.more_vert)],
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.grey,
        body:SafeArea(
          child: Column(
            children: [
              SizedBox(height: 125,),
              TextFormField(
                textAlign: TextAlign.right,
                controller: ctrl,
                keyboardType: TextInputType.none,
              ),
              SizedBox(height: 75,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      num1="";
                      num2="";
                      ctrl.clear();
                    });
                  }, child: Text("C",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    ctrl.text="√";
                    optr="√";
                    clk=true;
                  },
                    child: Text("√",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15),),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),),
                  ElevatedButton(onPressed: (){
                    ctrl.text="%";
                    optr="%";
                    clk=true;
                  }, child: Text("%",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),),
                  ElevatedButton(onPressed: (){
                    ctrl.text="/";
                    optr="/";
                    clk=true;
                  }, child: Text("/",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15),),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),)
                ],
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
          
                    if(clk == false)
                    {
                      num2+="7";
                      ctrl.text =num2;
                    }
                    else
                    {
                      num1+="7";
                      ctrl.text =num1;
                    }
                  }, child: Text("7",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                    ),),
                  ElevatedButton(onPressed: (){
                    if(clk == false)
                    {
                      num2+="8";
                      ctrl.text =num2;
                    }
                    else
                    {
                      num1+="8";
                      ctrl.text =num1;
                    }
                  }, child: Text("8",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                      {
                        num2+="9";
                        ctrl.text=num2;
                      }
                    else
                      {
                        num1+="9";
                        ctrl.text=num1;
                      }
          
                  }, child: Text("9",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15),),style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                  ElevatedButton(onPressed: (){
                    ctrl.text = "*";
                    optr ="*";
                    clk = true;
                  }, child: Center(
                    child: Text("*",
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold),),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                      {
                        num2+="4";
                        ctrl.text=num2;
                      }
                    else
                      {
                        num1+="4";
                        ctrl.text=num1;
                      }
                  }, child: Text("4",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                      {
                        num2+="5";
                        ctrl.text=num2;
                      }
                    else
                      {
                        num1+="5";
                        ctrl.text=num1;
                      }
                  }, child: Text("5",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                      {
                        num2+="6";
                        ctrl.text=num2;
                      }
                    else
                      {
                        num1+="6";
                        ctrl.text=num1;
                      }
                  }, child: Text("6",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                 ElevatedButton(onPressed: (){
                    ctrl.text = "-";
                    optr = "-";
                    clk = true;
                  }, child: Text("-",
                   style: TextStyle(fontSize: 15,
                       fontWeight: FontWeight.bold),),
                 style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8),
                   )
                 ),),
                ],
              ),
              SizedBox(height: 35,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
              ElevatedButton(onPressed: (){
                if(clk==false)
                  {
                    num2+="1";
                    ctrl.text=num2;
                  }
                else
                  {
                    num1+="1";
                    ctrl.text=num1;
                  }
              }, child: Text("1",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              ),),
              ElevatedButton(onPressed: (){
                if(clk==false)
                  {
                    num2+="2";
                    ctrl.text=num2;
                  }
                else
                  {
                    num1+="2";
                    ctrl.text=num1;
                  }
              }, child: Text("2",
                style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              ),),
              ElevatedButton(onPressed: (){
                if(clk==false)
                  {
                    num2+="3";
                    ctrl.text=num2;
                  }
                else
                  {
                    num1+="3";
                    ctrl.text=num1;
                  }
              }, child: Text("3",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              ),),
              ElevatedButton(onPressed: (){
                ctrl.text="+";
                optr="+";
                clk=true;
              }, child: Text("+",
                style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              ),),
                ]
               ),
              SizedBox(height: 35,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                      {
                        num2+="0";
                        ctrl.text=num2;
                      }
                    else
                      {
                        num1+="0";
                        ctrl.text=num1;
                      }
                  }, child: Text("0",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      num2+=".";
                      ctrl.text=num2;
                    }
                    else
                    {
                      num1+=".";
                      ctrl.text=num1;
                    }
                    }, child: Text(".",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                  ElevatedButton(onPressed: (){
                    ctrl.text="^";
                    optr="^";
                    clk=true;
                  }, child: Text("^",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      if(optr == "+")
                      {
                        double a = double.parse(num1);
                        double b  = double.parse(num2);
                        double res = a+b;
                        ctrl.text = res.toString();
                      }
                      if(optr=="-")
                      {
                        double a =double.parse(num2);
                        double b= double.parse(num1);
                        double res = a-b ;
                        ctrl.text = res.toString();
                      }
                      if(optr=="*")
                      {
                        double a =double.parse(num1);
                        double b = double.parse(num2);
                        double res = a*b;
                        ctrl.text=res.toString();
                      }
                      if(optr=="/")
                      {
                        double a =double.parse(num2);
                        double b = double.parse(num1);
                        double res = a/b;
                        ctrl.text=res.toString();
                      }
                      if(optr=="%")
                      {
                        double a = double.parse(num1);
                        double b = double.parse(num2);
                        double res = (a*b)/100;
                        ctrl.text=res.toString();
                      }
                      if(optr=="^")
                      {
                        double a = double.parse(num2);
                        double b = double.parse(num1);
                        num res = pow (a,b);
                        ctrl.text=res.toString();
                      }
                      if(optr=="√")
                      {
                        double a = double.parse(num1);
                        double res = sqrt(a);
                        ctrl.text=res.toString();
                      }
                    });
                  }, child: Text("=",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),
                  ),
                ],
              ),
            ],
          ),
        )
      // Column(
      //   children: [
      //     SizedBox(height: 200,),
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: TextField(
      //         controller: text,
      //         textAlign: TextAlign.right,
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(
      //             borderSide: BorderSide(color: Colors.black),
      //             borderRadius: BorderRadius.circular(8),
      //           ),
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 30,),
      //     Row(
      //       children: [
      //         SizedBox(width: 30,),
      //         // 7th button
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="7";
      //           });
      //         },
      //             child: Text("7",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="8";
      //           });
      //         },
      //             child: Text("8",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="9";
      //           });
      //         },
      //             child: Text("9",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="*";
      //           });
      //         },
      //             child: Text("*",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     SizedBox(height: 30,),
      //     Row(
      //       children: [
      //         SizedBox(width: 30,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="4";
      //           });
      //         },
      //             child: Text("4",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="5";
      //           });
      //         },
      //             child: Text("5",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="6";
      //           });
      //         },
      //             child: Text("6",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="-";
      //           });
      //         },
      //             child: Text("-",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //
      //       ],
      //     ),
      //     SizedBox(height: 30,),
      //     Row(
      //       children: [
      //         SizedBox(width: 30,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //            text.text+="1";
      //           });
      //         },
      //             child: Text("1",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="2";
      //           });
      //         },
      //             child: Text("2",style: TextStyle(fontSize: 20),
      //             ),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="3";
      //           });
      //         },
      //             child: Text("3",style: TextStyle(fontSize: 20),),
      //             style: ElevatedButton.styleFrom(
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(8),
      //               ),
      //             ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="+";
      //           });
      //         },
      //             child: Text("+",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     SizedBox(height: 30,),
      //     Row(
      //       children: [
      //         SizedBox(width: 30,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="c";
      //           });
      //         },
      //             child: Text("c",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="0";
      //           });
      //         },
      //             child: Text("0",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="=";
      //           });
      //         },
      //             child: Text("=",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 20,),
      //         ElevatedButton(onPressed: (){
      //           setState(() {
      //             text.text+="/";
      //           });
      //         },
      //             child: Text("/",style: TextStyle(fontSize: 20),),
      //           style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}

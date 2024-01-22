import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vadivelu_calculator/cal%20crud.dart';
class clc extends StatefulWidget {
  const clc({super.key});

  @override
  State<clc> createState() => _clcState();
}

class _clcState extends State<clc> {

  final crtl = TextEditingController();
  List listdata =[];
  // List filteredList =[1,2,3,4,5,6,7,8,9];
  //
  void delete(int index){
    setState(() {
      listdata.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: crtl,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   ElevatedButton(onPressed: (){
                     var a = listdata;
                     var s=a.reduce((curr, next) => curr < next ? curr: next);
                     crtl.text = s.toString();
                     showModalBottomSheet(
                         context: context,
                         builder: (BuildContext context)
                     {
                       return Container(
                         height: 100,
                           width: 200,
                         color: Colors.orange,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 15.0),
                           child: Row(
                             children: [
                               Text("Min: ",
                                 style: TextStyle(fontSize: 15,
                                     fontWeight: FontWeight.bold),),
                               Text(crtl.text,
                                 style: TextStyle(fontSize: 15,
                                     fontWeight: FontWeight.bold),),
                             ],
                           ),
                         ),
                       );
                     }
                     );
                   }, child: Text("Min",
                     style: TextStyle(fontSize: 15,
                         fontWeight: FontWeight.bold),),
                   style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(8),
                     )
                   ),
                   ),
                  ElevatedButton(onPressed: (){
        
                    var a = listdata;
                    var s= a.reduce((curr, next) => curr > next ? curr: next);
        
                    crtl.text = s.toString() ;
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context)
                          {
                            return Container(
                              height: 100,
                                width: 200,
                                color: Colors.pinkAccent,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Text("Max: ",
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 15),),
                                      Text(crtl.text,
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 15),)
                                    ],
                                  ),
                                ),
                            );
                          }
                    );
                    }, child: Text("Max",
                    style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                  ),
                   ),
        
               ElevatedButton(onPressed: (){
                setState(() {
                  listdata=listdata.where((num) => num <5).toList();
                });
               }, child: Text("<5",
                 style: TextStyle(fontWeight: FontWeight.bold,
                     fontSize: 15),),
               style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8),
                 )
               ),),
               ElevatedButton(onPressed: (){
               setState(() {
        
                listdata.add(int.parse(crtl.text));
                crtl.clear();
               });
                }, child: Text("Ok",
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
              SizedBox(height: 30,),
              Padding(
               padding: const EdgeInsets.all(8.0),
                child: Container(
                height: 350,
                width: 600,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listdata.length,
                    itemBuilder: (BuildContext con,index)
                    {
                      return
                        ListTile(
                          title: Text(listdata[index].toString(),
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold),),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: ()=>delete(index),
                          ),
                        );
                    }
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      listdata=List.from(listdata)..sort((a,b)=> a.compareTo(b));
                    });
                  }, child: Text("Ascending",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),),
                  SizedBox(width: 30,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                     listdata=List.from(listdata)..sort((a,b)=> b.compareTo(a));
                    });
                  }, child: Text("Descending",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



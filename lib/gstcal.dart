import 'package:flutter/material.dart';
class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  final a2d = TextEditingController();
  final gst = TextEditingController();
 double result =0.0;
 double tgst=0.0;
 double cgst =0.0;
 double sgst =0.0;
 double actual=0.0;
 void calculateGst()
 {
   setState(() {
     tgst=double.parse(a2d.text)*(double.parse(gst.text)/100);
     sgst=tgst/2;
     cgst=tgst/2;
     result=double.parse(a2d.text)+tgst;
   });
 }
  void Incul()
  {
    setState(() {
      actual = (double.parse(a2d.text)*100)/(double.parse(gst.text)+100);
      tgst = double.parse(a2d.text)-actual;
      sgst = tgst/2;
      cgst = tgst/2;
      result = actual+tgst;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.calculate),
        title: Center(
          child: Text("GST Calculator",
          style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.bold),),
        ),
        actions: [Icon(Icons.more_vert)],
        backgroundColor:Colors.amber,
      ),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: a2d,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter Amount",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: gst,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter GST Percentage",
                  labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              setState(() {
               Incul();
              });
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context)
                  {
                    return
                      Container(
                        height: 300,
                        width: 300,
                        child: Center(
                          child: Column(
                            children: [
                              Text("Actual:$actual"),
                              Text("Gst:$tgst"),
                              Text("CGst:$cgst"),
                              Text("SGst:$sgst"),
                              Text("Total:$result"),
                            ],
                          ),
                        ),
                      );
                  });
            }, child: Text("Inclusive",style: TextStyle(fontWeight:
            FontWeight.bold,fontSize: 15),),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              calculateGst();
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context)
                  {
                    return Container(
                      height: 200,
                      width: 300,
                      child: Center(child: Column(
                        children: [
                          Text("Gst:$tgst"),
                          Text("CGst:$cgst"),
                          Text("SGst:$sgst"),
                          Text("Total:$result")
                        ],
                      ),
                      ),
                    );
                  });
            }, child: Text("Calculate",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 15),),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),),
          ],
        ),
      ),
    );
  }
}

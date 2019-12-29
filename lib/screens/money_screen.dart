import 'package:flutter/material.dart';

class MoneyScreen extends StatefulWidget {
  @override
  _MoneyScreenState createState() => new _MoneyScreenState();
 }
class _MoneyScreenState extends State<MoneyScreen> {
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
     home: Scaffold(
       backgroundColor: Color(0xFF21BFBD),    
       body: ListView(
         children: <Widget>[
           Padding(
             padding: EdgeInsets.only(top: 15.0, left: 10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   width: 125.0,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Text('Balance',
                       style: TextStyle(
                         fontFamily: 'Montserrat',
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 25.0
                       ),
                      )
                     ],
                   ),
                 ),

                 Container(
                   width: 125.0,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       IconButton(
                         icon: Icon(Icons.search),
                         color: Colors.white,
                         onPressed: (){},
                       )
                     ],
                   ),
                 )
               ],
             ),
           ),
           SizedBox(height: 5.0,),
           Container(
             height: MediaQuery.of(context).size.height-50,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0))
             ),
             
           )
         ],
       ),
     ),
  
   );
  }
}
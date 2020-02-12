import 'package:flutter/material.dart';

class MoneyOut extends StatefulWidget {
  @override
  _MoneyOutState createState() => _MoneyOutState();
}

class _MoneyOutState extends State<MoneyOut> {
  @override
  Widget build(BuildContext context) {
    return Container(
        
         decoration: BoxDecoration(
         gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF78ffd6),
            Color(0xff0079991),
            Color(0xff007991),
            Color(0xff0079991),
         
           ],
          )
      ), 
       child: ListView(
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
                       Text('Salidas',
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
           SizedBox(height: 15.0,),
           Container(
             height: MediaQuery.of(context).size.height-50,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0))
             ),
             child: Text('Hola'),
           )
         ],
       ),
    );
  }
}

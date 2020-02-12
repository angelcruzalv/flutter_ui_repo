import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xff007991),
            Color(0xFF78ffd6),
           ],
       )
      ),    //0xFF21BFBD
       child: ListView(
         children: <Widget>[
           Padding(
             padding: EdgeInsets.only(top: 15.0, left: 10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   width: 125,
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Inicio",
                        style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0 ),
                        ),
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
          // SizedBox(height: 5.0,),
        /*   Padding(
             padding: EdgeInsets.only(top: 15.0 ,left: 40.0),
             child: Row(
               children: <Widget>[
                 Text("Inicio",
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 25.0 ),
                ),
                 SizedBox(width: 10.0),
                 Text("",
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 25.0 ),
                ),
               ],
             ),
           ),*/
           SizedBox(height: 15.0,),
           Container(
             height: MediaQuery.of(context).size.height-50,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
             ),
             child: ListView(
               primary: false,
               //padding: EdgeInsets.only(left: 5.0, right: 5.0),
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.only(top: 0.0),
                   child: Container(
                     height: MediaQuery.of(context).size.height - 145.0,
                     width: MediaQuery.of(context).size.width,
                     child: ScrollConfiguration(
                       //Cambia el color del final del scroll del listview
                       behavior: ScrollBehavior(),
                       child: GlowingOverscrollIndicator(
                         axisDirection: AxisDirection.down,
                         color: Color(0xFF78ffd6), 
                          child: ListView(
                           children: <Widget>[
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                            _buildFoodItem('assets/woman.jpg', 'Lorem Ipsum', '123'),
                         
                       ],
                     ),
                   ), 
                  )



                   ),
                 ),
                 
               ],
             ),
           ),
         ],
       ),  )
     ),
    );
  }
  
}

Widget _buildFoodItem(String imgPath, String foodName, String price) {

    return Padding(

        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),

        child: InkWell(

          onTap: () {
/*
            Navigator.of(context).push(MaterialPageRoute(

              builder: (context) => DetailsPage(heroTag: imgPath, foodName: foodName, foodPrice: price)

            ));
*/
          },

          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[

              Container(

                child: Row(

                  children: [
                    
                   /* Hero(

                      tag: imgPath,

                      child: Image(

                        image: AssetImage(imgPath),

                        fit: BoxFit.cover,

                        height: 75.0,

                        width: 75.0

                      )

                    ), */

                    SizedBox(width: 10.0),

                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:[

                        Text(

                          foodName,

                          style: TextStyle(

                            fontFamily: 'Montserrat',

                            fontSize: 17.0,

                            fontWeight: FontWeight.bold

                          ),
                          
                        ),

                        Text(

                          price,

                          style: TextStyle(

                            fontFamily: 'Montserrat',

                            fontSize: 15.0,

                            color: Colors.grey

                          )

                        )

                      ]

                    )

                  ]

                )

              ),

              IconButton(

                icon: Icon(Icons.add),

                color: Colors.black,

                onPressed: () {}

              )

            ],

          )

        ));
       

  }





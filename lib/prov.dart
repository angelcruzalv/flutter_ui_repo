import 'package:flutter/material.dart';
import 'package:flutter_ui/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      
      backgroundColor: Color(0xFF21BFBD),    
       body: ListView(
         children: <Widget>[
           Padding(
             padding: EdgeInsets.only(top: 15.0, left: 10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 IconButton(
                   icon: Icon(Icons.arrow_back_ios),
                   color: Colors.white,
                   onPressed: (){},
                 ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.filter_list),
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
           Padding(
             padding: EdgeInsets.only(left: 40.0),
             child: Row(
               children: <Widget>[
                 Text("Alberto",
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 25.0 ),
                ),
                 SizedBox(width: 10.0),
                 Text("Ángel",
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 25.0 ),
                ),
               ],
             ),
           ),
           SizedBox(height: 10.0,),
           Container(
             height: MediaQuery.of(context).size.height -0.0,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(35.0), topRight: Radius.circular(35.0)),
             ),
             child: ListView(
               primary: false,
               padding: EdgeInsets.only(left: 25.0, right: 20.0),
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.only(top: 5.0),
                   child: Container(
                     height: MediaQuery.of(context).size.height - 100.0,
                     child: ListView(
                       children: <Widget>[
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         _buildFoodItem('assets/woman.jpg', 'Angelina Wise', '123'),
                         
                       ],
                     ),
                   ),
                 ),
                 
               ],
             ),
           ),
         ],
       ),

       floatingActionButton: FloatingActionButton(
         onPressed: (){},
         backgroundColor: Color(0xFFF17532),
         child: Icon(Icons.plus_one),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(),
        
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

                    
                    Hero(

                      tag: imgPath,

                      child: Image(

                        image: AssetImage(imgPath),

                        fit: BoxFit.cover,

                        height: 75.0,

                        width: 75.0

                      )

                    ),

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

                          )

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





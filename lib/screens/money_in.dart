import 'package:flutter/material.dart';

class MoneyIn extends StatefulWidget {
  @override
  _MoneyInState createState() => _MoneyInState();
}

class _MoneyInState extends State<MoneyIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[
          Color(0xff0079991),
          Color(0xff007991),
          Color(0xff0079991),
          Color(0xFF78ffd6),
        ],
      )),
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
                      Text(
                        'Entradas',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
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
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0)),
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
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(price,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                color: Colors.grey))
                      ])
                ])),
                IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.black,
                    onPressed: () {})
              ],
            )));
  }
}

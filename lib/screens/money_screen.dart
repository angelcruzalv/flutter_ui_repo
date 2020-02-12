import 'package:flutter/material.dart';

class MoneyScreen extends StatefulWidget {
  static const String routeName = '/money';
  @override
  _MoneyScreenState createState() => new _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      // backgroundColor: Color(0xFF21BFBD),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            //Color(0xFF78ffd6),
            Color(0xff0079991),
            Color(0xff0079991),
            Color(0xff007991),
            Color(0xff007991),
            Color(0xff0079991),
            Color(0xff0079991),
            // Color(0xFF78ffd6),
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
                          'Balance',
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
                      topRight: Radius.circular(35.0))),
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                children: <Widget>[
                  _cardIngresos(),
                  _cardEgresos(),
                  _cardBalance(),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget _cardIngresos() {
    return Container(
        padding: EdgeInsets.only(right: 20.0),
        child: Card(
          color: Colors.transparent,
          elevation: 0.0,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.account_balance_wallet, color: Colors.green,),
                title: Text('Ingresos totales'),
                subtitle:
                    Text('Aquí se muestran todos los ingresos de ventas '),
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('12345678', style: TextStyle(fontSize: 22.0, color: Colors.green ))
                ],
              )
            ],
          ),
        ));
  }

  Widget _cardEgresos() {
    return Container(
        padding: EdgeInsets.only(right: 20.0),
        child: Card(
          color: Colors.transparent,
          elevation: 0.0,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.account_balance_wallet, color: Colors.red,),
                title: Text('Egresos totales'),
                subtitle:
                    Text('Aquí se muestran el total de salida de dinero'),
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('1345678', style: TextStyle(fontSize: 22.0, color: Colors.red ))
                ],
              )
            ],
          ),
        )
      );
  }

  Widget _cardBalance() {

    return Container(
      padding: EdgeInsets.only(right: 20.0),
      child: Card(
        color: Colors.transparent,
        elevation: 0.0,
        child: Column(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.attach_money, color: Colors.red,),
                title: Text('Balance'),
                subtitle:
                    Text('Aquí se muestran el total de salida de dinero'),
                
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('110000000', style: TextStyle(fontSize: 22.0, color: Colors.orange),)
              ],
            )
          ],
        ),
      ),
    );

  }
}

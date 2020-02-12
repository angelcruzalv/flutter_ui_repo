import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/home_screen.dart';
import 'package:flutter_ui/screens/money_in.dart';
import 'package:flutter_ui/screens/money_out.dart';
import 'package:flutter_ui/screens/money_screen.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title",
      home: MyStatefulWidget(
        title: 'Flutter demo',
      ),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(237, 64, 60, 1.0),
      ),
      routes: <String, WidgetBuilder>{
        MoneyScreen.routeName : (BuildContext context) => MoneyScreen(),

      },

    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyStatefulWidget createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    MoneyIn(),
    MoneyScreen(),
    
  ];

  Widget currentScreen = MyHomePage();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        //Boton flotante Acción
        floatingActionButton: FloatingActionButton(

          onPressed: () {
            setState(() {
              currentScreen = MoneyScreen();
              _selectedIndex = 4;
            });

          },
          backgroundColor: Color(0xFFF17532),
          child: Icon(Icons.attach_money),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 6.0,
            color: Colors.transparent,
            elevation: 9.0,
            clipBehavior: Clip.antiAlias,
            child: Container(
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                 // color: Color(0xFF21BFBD),
                 gradient: LinearGradient(
                   colors: <Color>[
                     Color(0xff007991),
                     Color(0xFF78ffd6),
                   ]
                 )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Container(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = MyHomePage();
                              _selectedIndex = 0;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.home,
                                color: _selectedIndex == 0
                                    ? Color(0xFFEF7532)
                                    : Color(0xFF676E79),
                              ),
                            ],
                          ),
                        )
                      ),
                      Container(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = MoneyIn();
                              _selectedIndex = 1;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_downward,
                                color: _selectedIndex == 1
                                    ? Color(0xFFEF7532)
                                    : Color(0xFF676E79),
                              ),
                            ],
                          ),
                        )
                      ),
                      Container(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = MoneyOut();
                              _selectedIndex = 2;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_upward,
                                color: _selectedIndex == 2
                                    ? Color(0xFFEF7532)
                                    : Color(0xFF676E79),
                              ),
                            ],
                          ),
                        )
                      ),
                      Container(
                        child: MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = MyHomePage();
                              _selectedIndex = 3;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.settings_applications,
                                color: _selectedIndex == 3
                                    ? Color(0xFFEF7532)
                                    : Color(0xFF676E79),
                              ),
                            ],
                          ),
                        )
                      ),
                  ],
                )
              ),
            ),
      ),
    );
  }
}

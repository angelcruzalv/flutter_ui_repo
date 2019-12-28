import 'package:flutter/material.dart';
import 'package:flutter_ui/bottom_bar.dart';
import 'package:flutter_ui/home.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFFF17532),
          child: Icon(Icons.plus_one),
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
                  color: Color(0xFF21BFBD),
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
                              currentScreen = MyHomePage();
                              _selectedIndex = 1;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.person_outline,
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
                              currentScreen = MyHomePage();
                              _selectedIndex = 2;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.pets,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/Components/Menu/MenuItem.dart';
import 'package:login_screen/menu.dart';
import 'package:login_screen/menu2.dart';

class MenuTest extends StatefulWidget {
  @override
  State<MenuTest> createState() => MenuState();
}

class MenuState extends State<MenuTest>
{
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
          child: Column(
              children: <Widget>[
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child :
                    Row(
                        children: <Widget>[
                          Expanded(
                            flex:1,
                            child: Menu(),
                            //child: MenuTwo(),
                          ),
                          Spacer(flex: 5)
                        ]
                    )
                )
              ]
          )
      )
    );
  }
}
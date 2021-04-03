import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:login_screen/menu.dart';
import 'package:login_screen/styles.dart';


class MenuItem extends StatelessWidget {
  String InfoText;
  IconData icon;
  TextStyle style = ButtonTextStyle;
  Color MainColorIcon = Color.fromRGBO(76, 76, 76, 1);

  MenuItem(String InfoText, IconData icon, bool IsPressed){
    this.InfoText = InfoText;
    this.icon = icon;
    if(icon == Icons.dashboard)
      {MainColorIcon = Color.fromRGBO(235, 130, 37, 1);}
    if(IsPressed)
      style = ButtonTextBoldStyle;
  }

  @override
  Widget build(BuildContext context) {
    return
      Row(
          children: <Widget>[
            Spacer(flex: 1),
            Expanded(
                flex: 3,
                //child: new LayoutBuilder(builder: (context, constraint) {
                  //return new Icon(icon, size: constraint.biggest.width, color:MainColorIcon);
                //})
              child: Icon(
                  icon,
                  color: MainColorIcon,
                  size: 40
              ),

            ),
            Spacer(flex: 2),
            Expanded(
                flex: 14,
                child:Align(
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    InfoText,
                    style: style,
                    maxLines: 1,
                  ),
                )
            )
          ]
      );
  }
}

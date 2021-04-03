import 'package:flutter/material.dart';
import 'package:login_screen/menu.dart';
import 'package:login_screen/Components/Menu/MenuItem.dart';


class ContainerMenuItem extends StatefulWidget {
  String textButton;
  IconData icon;
  @override
  State<ContainerMenuItem> createState() => ContainerMenuItemState(textButton, icon);
  ContainerMenuItem(String InputTextButton, IconData inputIcon){
    textButton = InputTextButton;
    icon = inputIcon;
  }
}

class ContainerMenuItemState extends State<ContainerMenuItem> {

  bool test = false;
  IconData icon;
  String buttonText;
  String PressedButtonText;
  Color borderColor;

  @override
  void initState() {
    borderColor = Colors.white;
    Menu().test(this);
    super.initState();
  }

  ContainerMenuItemState(String inputButtonText, IconData inputIcon){
    buttonText = inputButtonText;
    icon = inputIcon;
  }

  @override
  Widget build(BuildContext context) {
    return
      Container(
          decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(width: 5.0, color: borderColor)
              ),
          ),
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white, width: 0)
              ),
              onPressed: () {
                PressedButtonText = buttonText;
                setState(() {

                  borderColor = Color.fromRGBO(20, 95, 55, 1);

                  //buttonText;
                });
              },
              child:
              PressedButtonText == buttonText?
              MenuItem(buttonText, icon, true):
              MenuItem(buttonText, icon, false)
          )

      );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/Components/Menu/MenuItem.dart';

import 'package:login_screen/Components/Menu/ContainerMenuItem.dart';

import 'package:login_screen/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MenuTwo extends StatefulWidget {
  @override
  State<MenuTwo> createState() => MenuState();
}

class MenuState extends State<MenuTwo> {
  String buttonText;
  Color BorderColorMain = Colors.white;
  Color BorderColorOrders = Colors.white;
  Color BorderColorGoods = Colors.white;
  Color BorderColorTasks = Colors.white;
  Color BorderColorProfile = Colors.white;
  Color BorderColorSubscription = Colors.white;
  Color BorderColorSettings = Colors.white;
  Color BorderColorHelp = Colors.white;

  void ColorSelection(String test) {
    BorderColorMain = Colors.white;
    BorderColorOrders = Colors.white;
    BorderColorGoods = Colors.white;
    BorderColorTasks = Colors.white;
    BorderColorProfile = Colors.white;
    BorderColorSubscription = Colors.white;
    BorderColorSettings = Colors.white;
    BorderColorHelp = Colors.white;
    if (test == 'Главная') {BorderColorMain = Color.fromRGBO(20, 95, 55, 1);}
    if (test == 'Заказы') {BorderColorOrders = Color.fromRGBO(20, 95, 55, 1);}
    if (test == 'Товары') {BorderColorGoods = Color.fromRGBO(20, 95, 55, 1);}
    if (test == 'Задачи') {BorderColorTasks = Color.fromRGBO(20, 95, 55, 1);}
    if (test == 'Профиль') {BorderColorProfile = Color.fromRGBO(20, 95, 55, 1);}
    if (test == 'Подписка') {BorderColorSubscription = Color.fromRGBO(20, 95, 55, 1);}
    if (test == 'Настройки') {BorderColorSettings = Color.fromRGBO(20, 95, 55, 1);}
    if (test == 'Помощь') {BorderColorHelp = Color.fromRGBO(20, 95, 55, 1);}
  }

  @override
  void initState() {
    BorderColorMain = BorderColorMain = Color.fromRGBO(20, 95, 55, 1);
    buttonText = 'Главная';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[

      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 5.0, color: BorderColorMain),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.white, width: 0)),
                  onPressed: () {
                    ColorSelection('Главная');
                    setState(() {
                      buttonText = 'Главная';
                    });
                  },
                  child: buttonText == 'Главная'
                      ? (MenuItem("Главная", Icons.dashboard, true))
                      : MenuItem("Главная", Icons.dashboard, false)))),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 5.0, color: BorderColorOrders),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () {
                    ColorSelection('Заказы');
                    setState(() {
                      buttonText = 'Заказы';
                    });
                  },
                  child: buttonText == 'Заказы'
                      ? (MenuItem("Заказы", Icons.shopping_bag, true))
                      : MenuItem("Заказы", Icons.shopping_bag, false)))),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 5.0, color: BorderColorGoods),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () {
                    ColorSelection('Товары');
                    setState(() {
                      buttonText = 'Товары';
                    });
                  },
                  child: buttonText == 'Товары'
                      ? (MenuItem("Товары", CupertinoIcons.cube_box_fill, true))
                      : MenuItem(
                      "Товары", CupertinoIcons.cube_box_fill, false)))),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 5.0, color: BorderColorTasks),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () {
                    ColorSelection('Задачи');
                    setState(() {
                      buttonText = 'Задачи';
                    });
                  },
                  child: buttonText == 'Задачи'
                      ? (MenuItem("Задачи", Icons.list, true))
                      : MenuItem("Задачи", Icons.list, false)))),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 5.0, color: BorderColorProfile),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () {
                    ColorSelection('Профиль');
                    setState(() {
                      buttonText = 'Профиль';
                    });
                  },
                  child: buttonText == 'Профиль'
                      ? (MenuItem("Профиль", Icons.account_circle, true))
                      : MenuItem("Профиль", Icons.account_circle, false)))),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                        width: 5.0, color: BorderColorSubscription),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () {
                    ColorSelection('Подписка');
                    setState(() {
                      buttonText = 'Подписка';
                    });
                  },
                  child: buttonText == 'Подписка'
                      ? (MenuItem("Подписка", Icons.work, true))
                      : MenuItem("Подписка", Icons.work, false)))),
      Spacer(flex: 1),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 5.0, color: BorderColorSettings),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () {
                    ColorSelection('Настройки');
                    setState(() {
                      buttonText = 'Настройки';
                    });
                  },
                  child: buttonText == 'Настройки'
                      ? (MenuItem("Настройки", Icons.settings, true))
                      : MenuItem("Настройки", Icons.settings, false)))),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 5.0, color: BorderColorHelp),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () {
                    ColorSelection('Помощь');
                    setState(() {
                      buttonText = 'Помощь';
                    });
                  },
                  child: buttonText == 'Помощь'
                      ? (MenuItem("Помощь", Icons.help, true))
                      : MenuItem("Помощь", Icons.help, false)))),
      Spacer(flex: 1),
      Expanded(
          flex: 1,
          child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 5.0, color: Colors.white),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      side: BorderSide(color: Colors.white, width: 1)),
                  onPressed: () {
                    setState(() {
                      ColorSelection('Выйти');
                      buttonText = 'Выйти';
                    });
                  },
                  child: (MenuItem(
                      "Выйти", Icons.power_settings_new_outlined, false))))),
    ]);
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/Components/Menu/MenuItem.dart';

import 'package:login_screen/Components/Menu/ContainerMenuItem.dart';

import 'package:login_screen/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Menu extends StatelessWidget
{
  ContainerMenuItemState main = ContainerMenuItemState('Главная', Icons.dashboard);
  ContainerMenuItem goods = ContainerMenuItem('Заказы', Icons.shopping_bag);

  void test(ContainerMenuItemState has)
  {
    main.borderColor = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(flex: 1, child: ContainerMenuItem('Главная', Icons.dashboard)),
        Expanded(flex: 1, child: ContainerMenuItem('Заказы', Icons.shopping_bag)),
        Expanded(flex: 1, child: ContainerMenuItem('Товары', CupertinoIcons.cube_box_fill)),
        Expanded(flex: 1, child: ContainerMenuItem('Задачи', Icons.list)),
        Expanded(flex: 1, child: ContainerMenuItem('Профиль', Icons.account_circle)),
        Expanded(flex: 1, child: ContainerMenuItem('Подписка', Icons.work)),
        Spacer(flex: 1),
        Expanded(flex: 1, child: ContainerMenuItem('Настройки', Icons.settings)),
        Expanded(flex: 1, child: ContainerMenuItem('Помощь', Icons.help)),
        Spacer(flex: 1),
        Expanded(flex: 1, child: ContainerMenuItem('Выход', Icons.power_settings_new_outlined)),
    ]
    );
  }
}


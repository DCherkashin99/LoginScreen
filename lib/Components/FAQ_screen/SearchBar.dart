import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const SearchBar({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Row(
        children: <Widget>[
          Expanded(
              flex: 5,
              child:
              Container(
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    border: Border.all(color: Color.fromRGBO(140, 140, 140, 1)),
                  ),
                  child: TextField(
                    onChanged: onChanged,
                    cursorColor: Colors.black,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color:Color.fromRGBO(67,76,75,1),
                    ),
                    decoration: InputDecoration(
                        hintText: 'Введите ключевые слова и найдём вам ответ',
                        border: InputBorder.none,
                        prefixIcon: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                            child: Icon(
                                Icons.search,
                                color: Color.fromRGBO(44, 61, 81, 1),
                                size: 40
                            )
                        )
                    ),
                  )
              )
          ),
          Expanded(
              flex: 1,
              child:
              Container(
                  constraints: BoxConstraints.expand(),
                  child:
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor:  Color.fromRGBO(162, 207, 106, 1),
                      ),
                      child: AutoSizeText('Поиск', style: TextStyle(fontSize: 32.0, color: Colors.white))
                  )
                  )
          )
        ]
    );
  }
}
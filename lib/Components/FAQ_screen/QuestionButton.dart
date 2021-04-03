import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:login_screen/styles.dart';

class QuestionButton extends StatelessWidget {
  String InfoText;
  bool Pressed = true;

  QuestionButton(String InfoText){
    this.InfoText = InfoText;
  }
  @override
  Widget build(BuildContext context) {
      return
        Expanded(
            flex: 10,
            child:
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  //primary: ,
                  side: BorderSide(color: Colors.red),
                ),
                onPressed: (

                    ) {
                },
                child:Row(
                    children: <Widget>[
                      Expanded(
                        flex: 15,
                          child:
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText(
                          InfoText,
                          style: BoldStyle,
                          maxLines: 1,
                        ),
                      )
                      ),
                      Expanded(
                        flex: 1,
                        child:
                        Icon(
                            Icons.keyboard_arrow_down,
                            color: Color.fromRGBO(44, 61, 81, 1),
                            size: 50
                        )

                      )
                    ]
                )
            )
        );
  }
}
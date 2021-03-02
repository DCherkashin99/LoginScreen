import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_screen/Components/Login_screen/RoundedInputField.dart';
import 'package:login_screen/Components/Login_screen/RoundedPasswordField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(236,236,236,1)),
                  child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 780,
                            child: Column(
                                children: <Widget>[
                                  Image.asset('assets/logo.png'),
                                ]
                            )
                        ),
                        Expanded(
                          flex: 470,
                          child : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    height: MediaQuery.of(context).size.height*0.7,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(162,207,106,1),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0))
                                    ),

                                    child : Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                                                width: 75.0,
                                                height: 75.0,
                                                child: FloatingActionButton(
                                                  backgroundColor: Colors.white,
                                                  child: Icon(Icons.arrow_back_rounded, color: Color.fromRGBO(143, 147, 148, 1),size: 60),
                                                  onPressed: () => {},
                                                ),
                                              )
                                          ),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  child: Text("Вернуться",
                                                    style: TextStyle(fontSize:18.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(67,76,75,1)),
                                                  )
                                              )
                                          )
                                        ]
                                    )
                                ),
                              ]
                          ),
                        ),
                        Expanded(
                            flex: 3200,
                            child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(color: Color.fromRGBO(232,232,232,1),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.0))),
                                    height: MediaQuery.of(context).size.height*0.1,
                                    child:
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child:
                                        Text(
                                          "Добро пожаловать на площадку FERMA",
                                          style: TextStyle(fontSize:48.0, fontWeight: FontWeight.bold, color: Color.fromRGBO(67,76,75,1)),
                                        )),
                                  ),
                                  Container(
                                      height: MediaQuery.of(context).size.height*0.6,
                                      decoration: BoxDecoration(color: Color.fromRGBO(232,232,232,1),
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(20.0))
                                      ),

                                      child:
                                      Row(
                                          children: <Widget>[
                                            Expanded(
                                              flex: 1400,
                                              child : Container(
                                                padding: EdgeInsets.fromLTRB(50, 0, 0, 50),
                                                child: Column(
                                                    crossAxisAlignment:CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[

                                                      Text("У вас ещё\nнет аккаунта ?",
                                                        style: TextStyle(fontSize:45.0,color: Color.fromRGBO(67,76,75,1)),
                                                      ),
                                                      GestureDetector(
                                                          child: Text("Зарегестрироваться", style: TextStyle(fontSize:20.0, decoration: TextDecoration.underline, color: Color.fromRGBO(108,179,211,1))),
                                                          onTap: () {}
                                                          )
                                                    ]
                                                ),
                                              )
                                            ),
                                            VerticalDivider(color: Colors.grey,
                                              thickness: 2,
                                              width: 100,
                                              indent: 75,
                                              endIndent: 100,
                                            ),
                                            Expanded(
                                                flex: 1800,
                                                child :
                                                Column(
                                                    crossAxisAlignment:CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Text(
                                                        "E-mail",
                                                        style: TextStyle(fontSize: 30, color: Color.fromRGBO(67,76,75,1)),
                                                      ),
                                                      RoundedInputField(
                                                        onChanged: (value) {},
                                                      ),
                                                      Text("Пароль", style: TextStyle(fontSize: 30, color: Color.fromRGBO(67,76,75,1)),
                                                      ),
                                                      RoundedPasswordField(
                                                        onChanged: (value) {},
                                                      ),
                                                      GestureDetector(
                                                          child: Text("Я не помню пароль", style: TextStyle(fontSize: 20, decoration: TextDecoration.underline, color: Color.fromRGBO(108,179,211,1))),
                                                          onTap: () {}
                                                      ),
                                                      Container(
                                                          width: MediaQuery.of(context).size.width*0.25,
                                                          margin: EdgeInsets.symmetric(vertical: 30),
                                                          child:
                                                          ElevatedButton(
                                                              child: Text("Войти", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                                                              style: ElevatedButton.styleFrom(
                                                                primary: Color.fromRGBO(162,207,106,1),
                                                                side: BorderSide(color: Colors.grey, width: 2),
                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                                                                padding: EdgeInsets.symmetric(vertical: 20),
                                                              ),
                                                              onPressed:(){}
                                                              )
                                                      )
                                                    ]
                                                )
                                            )
                                          ]
                                      )
                                  )
                                ]
                            )
                        ),
                        Expanded(
                            flex:850,
                            child: Column()
                        ),
                      ]
                  ),
        )
    );
  }
}


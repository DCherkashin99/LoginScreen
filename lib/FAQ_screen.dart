import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:login_screen/Components/FAQ_screen/QuestionButton.dart';
import 'package:login_screen/Components/FAQ_screen/SearchBar.dart';
import 'package:login_screen/styles.dart';

class FAQ_screen extends StatelessWidget {
  const FAQ_screen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //floatingActionButtonLocation:FloatingActionButtonLocation.startFloat,
        body: SingleChildScrollView(
            child: Container(
                //height: 1080,
                height: 1620,
                child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(162, 207, 106, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 15,
                        child: Row(children: <Widget>[
                          Spacer(
                            flex: 1,
                          ),
                          Expanded(
                              flex: 18,
                              child: Column(children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 3,
                                                  child: Container(
                                                      child:Column(
                                                          children: <Widget>[
                                                            Spacer(
                                                              flex: 1 ,
                                                            ),
                                                            Expanded(
                                                                flex: 1,
                                                                child: Align(
                                                                    alignment: Alignment.centerLeft,
                                                                    child: AutoSizeText(
                                                                        'У вас имеются вопросы?',
                                                                        style: BoldStyle
                                                                    )
                                                                ),
                                                            ),
                                                            Spacer(
                                                              flex: 1,
                                                            ),
                                                            Expanded(
                                                                flex: 1,
                                                                child:Align(
                                                                    alignment: Alignment.centerLeft,
                                                                    child: SearchBar()
                                                                )
                                                            ),
                                                            Expanded(
                                                                flex: 2,
                                                                child: Align(
                                                                    alignment: Alignment.centerLeft,
                                                                    child: Container(
                                                                        width: MediaQuery.of(context).size.width*0.375,
                                                                        child: AutoSizeText(
                                                                          'Пример: Доставка, упаковка, оплата и т.д',
                                                                          style: TextStyle(fontSize: 20, color: Color.fromRGBO(67,76,75,1)),
                                                                          textAlign: TextAlign.center,
                                                                          maxLines: 2,
                                                                        )
                                                                    )
                                                                )
                                                                ),
                                                            Spacer(
                                                                flex: 2
                                                            ),
                                                            Expanded(
                                                              flex: 2,
                                                              child: Align(
                                                                  alignment: Alignment.centerLeft,
                                                                  child: AutoSizeText(
                                                                      'Часто задаваемые вопросы',
                                                                      style: BoldStyle
                                                                  )
                                                              ),
                                                            )
                                                            ]
                                                      )
                                                  )
                                              ),
                                              Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                      child: (Image.asset('assets/grandfather.png')),
                                                  )
                                              )
                                            ]
                                        )
                                    )
                                ),
                                Divider(
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Column(
                                        children: <Widget>[
                                          Spacer(flex: 4),
                                          QuestionButton('Какие товары я могу размещать ?'),
                                          Spacer(flex: 1),
                                          QuestionButton('Какая подписка мне нужна, если я покупаю товар ?'),
                                          Spacer(flex: 1),
                                          QuestionButton('Как работет доставка ?'),
                                          Spacer(flex: 1),
                                          QuestionButton('Безопасность моих данных ?'),
                                          Spacer(flex: 1),
                                          QuestionButton('Сотрудничество'),
                                          Spacer(flex: 1),
                                        ]
                                    )
                                )
                              ]
                              )
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ]
                        ),
                      ),
                      Spacer(
                        flex: 1
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                            child: Row(children: <Widget>[
                              Expanded(
                                  flex: 2,
                                        child: (Image.asset('assets/farmer.png')),
                              ),
                              Expanded(
                                  flex: 3,
                                      child: Column (children: <Widget>[
                                        Spacer(flex: 1),
                                        Expanded(
                                            flex: 3,
                                            child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: AutoSizeText.rich(
                                                    TextSpan(text: 'Не можете найти\nподходящий ответ свяжитесь с нами'), style: BoldStyle, maxLines: 2)
                                                )
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: AutoSizeText.rich(
                                                  TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(text: 'Телефон поддержки: ',style: InfoStyle),
                                                      TextSpan(text: '+7(983)-123 - 22 - 33', style:InfoDataStyle),
                                                    ],
                                                  ),
                                                ),
                                            )
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: AutoSizeText.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(text: 'E-mail: ',style: InfoStyle),
                                                    TextSpan(text: 'Support@Ferma.ru', style:InfoDataStyle),
                                                  ],
                                                ),
                                              ),
                                            )
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: AutoSizeText.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(text: 'Адресс офиса: ',style: InfoStyle),
                                                    TextSpan(text: 'г.Красноярск,ул.Такая,д.такой, оф.другой', style:InfoDataStyle),
                                                  ],
                                                ),
                                              ),
                                            )
                                        ),
                                        Expanded(
                                            flex: 5,
                                            child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: AutoSizeText.rich(
                                                    TextSpan(text: 'Если вам нужны специальные условия\nили вы хотите работать с нами ,\nто свяжитесь по контактам'), style: BoldStyle, maxLines: 3)
                                            )
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: AutoSizeText.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(text: 'Телефон поддержки: ',style: InfoStyle),
                                                    TextSpan(text: '+7(983)-123 - 33 - 44', style:InfoDataStyle),
                                                  ],
                                                ),
                                              ),
                                            )
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: AutoSizeText.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(text: 'E-mail: ',style: InfoStyle),
                                                    TextSpan(text: 'Collabaration@Ferma.ru', style:InfoDataStyle),
                                                  ],
                                                ),
                                              ),
                                            )
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: AutoSizeText.rich(
                                                TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(text: 'Адресс офиса: ',style: InfoStyle),
                                                    TextSpan(text: 'г.Красноярск,ул.Такая,д.такой, оф.другой', style:InfoDataStyle),
                                                  ],
                                                ),
                                              ),
                                            )
                                        ),
                                        Spacer(flex: 1),
                                      ]
                                      )
                              )
                            ]
                            )
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}

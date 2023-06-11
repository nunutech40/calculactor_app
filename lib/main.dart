import 'package:flutter/material.dart';

import 'calculactor_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculactor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String screenText = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Container(
          color: Theme.of(context).primaryColor,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              screenText,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.white),
            ),
          ),
        )),
        GridView.count(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          crossAxisCount: 4,
          children: <Widget>[
            CalculactorButton(
              backgroundColor: Theme.of(context).primaryColorLight,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "C",
              onTap: () {
                setState(() {
                  inputText("C");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Theme.of(context).primaryColorLight,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "+/-",
              onTap: () {},
            ),
            CalculactorButton(
              backgroundColor: Theme.of(context).primaryColorLight,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "%",
              onTap: () {},
            ),
            CalculactorButton.Icon(
              backgroundColor: Theme.of(context).primaryColorDark,
              foreGroundColor: Theme.of(context).primaryColorLight,
              text: 'Backspace',
              icon: Icons.backspace,
              onTap: () {},
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "7",
              onTap: () {
                setState(() {
                  inputText("7");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "8",
              onTap: () {
                setState(() {
                  inputText("8");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "9",
              onTap: () {
                setState(() {
                  inputText("9");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Theme.of(context).primaryColorDark,
              foreGroundColor: Theme.of(context).primaryColorLight,
              text: "/",
              onTap: () {},
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "4",
              onTap: () {
                setState(() {
                  inputText("4");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "5",
              onTap: () {
                setState(() {
                  inputText("5");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "6",
              onTap: () {
                setState(() {
                  inputText("6");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Theme.of(context).primaryColorDark,
              foreGroundColor: Theme.of(context).primaryColorLight,
              text: "X",
              onTap: () {},
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "1",
              onTap: () {
                setState(() {
                  inputText("1");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "2",
              onTap: () {
                setState(() {
                  inputText("2");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "3",
              onTap: () {
                setState(() {
                  inputText("3");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Theme.of(context).primaryColorDark,
              foreGroundColor: Theme.of(context).primaryColorLight,
              text: "-",
              onTap: () {},
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "0",
              onTap: () {
                setState(() {
                  inputText("0");
                });
              },
            ),
            CalculactorButton(
              backgroundColor: Colors.white,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: ".",
              onTap: () {},
            ),
            CalculactorButton(
              backgroundColor: Theme.of(context).primaryColorLight,
              foreGroundColor: Theme.of(context).primaryColorDark,
              text: "=",
              onTap: () {},
            ),
            CalculactorButton(
              backgroundColor: Theme.of(context).primaryColorDark,
              foreGroundColor: Theme.of(context).primaryColorLight,
              text: "+",
              onTap: () {},
            ),
          ],
        )
      ]),
    );
  }

  void inputText(String text) {
    if (screenText != "0") {
      if (text == "C") {
        screenText = "0";
      } else {
        screenText += text;
      }
    } else if (text != "0") {
      print("cek text $text");
      screenText = text;
    }
  }
}

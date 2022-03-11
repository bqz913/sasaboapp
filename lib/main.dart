import 'package:flutter/material.dart';
import 'package:sasaboapp/menu_widget.dart';
import 'package:sasaboapp/sound_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // サウンドウィジェットのインスタンス
        home: const Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // プロパティ
  int person = 0;
  String backgroundImage = "assets/images/sasabo.jpg";

  void setPerson(int num) {
    setState(() {
      person = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (person == 0) {
      backgroundImage = "assets/images/sasabo.jpg";
    } else if (person == 1) {
      backgroundImage = "assets/images/tyannnabe.jpg";
    } else {
      backgroundImage = "assets/images/ossy.jpg";
    }

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SoundWidget(person: person),
            bottomNavigationBar:
                MenuWidget(setPerson: (int i) => setPerson(i))));
  }
}

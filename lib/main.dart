import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tapping/main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<MainModel>(
      create: (_) => MainModel(),
      child: Scaffold(
        appBar: AppBar(

          title: Text('ナマコさん'),
        ),
        body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                      model.kboyText,
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  RaisedButton(
                    child: Text('石川先生'),
                    onPressed: (){
                      model.changeKboyText();
                    },
                  ),
                ],
              ),
            );
          }
        ),

      ),
    );
  }
}

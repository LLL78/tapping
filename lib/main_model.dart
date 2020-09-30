import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String kboyText = '石川先生会いたい';

  void changeKboyText(){
    kboyText = '石川先生大好き';
    notifyListeners();
  }
}


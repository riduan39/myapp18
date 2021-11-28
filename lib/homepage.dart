import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  showExitPopup(){
    return
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert"),
            content: Text("You are Beautiful !  UnderStand"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("okey got it")),
              TextButton(onPressed: (){
                SystemNavigator.pop();
              }, child: Text("Exit"))
            ],
          );
        },
      );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
              color: Colors.green,
              child: Text("HomeScreen"),
              onPressed: () {
              })
        ],
      )),
    ));
  }
}

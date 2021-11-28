import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp18/pages/page1.dart';
import 'package:myapp18/pages/page2.dart';
import 'package:myapp18/pages/page3.dart';

class homepage2 extends StatefulWidget {
  const homepage2({Key? key}) : super(key: key);

  @override
  _homepage2State createState() => _homepage2State();
}

class _homepage2State extends State<homepage2> {
  int _value = 0;
  final pages = [
    page1(),page2(),page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        children: [
          NavigationRail(
              backgroundColor: Colors.black,
              labelType: NavigationRailLabelType.all,
              destinations: [
            NavigationRailDestination(
              icon: Icon(
                Icons.wifi,
                color: Colors.white,
              ),
              label: Text("WiFi"),
              selectedIcon: Icon(Icons.wifi, color: Colors.blue),
            ),
            NavigationRailDestination(
              icon: Icon(
                Icons.five_g_outlined,
                color: Colors.white,
              ),
              label: Text("Network"),
              selectedIcon: Icon(Icons.five_k_outlined, color: Colors.blue),
            ),
            NavigationRailDestination(
              icon: Icon(
                Icons.five_g_outlined,
                color: Colors.white,
              ),
              label: Text("Network"),
              selectedIcon: Icon(Icons.five_k_outlined, color: Colors.blue),
            ),
          ], selectedIndex: _value,
          onDestinationSelected: (val){
                setState(() {
                  _value = val;
                });
          }),
          Expanded(child: Container(
            child: pages[_value],
          ))
        ],
      ),
    ));
  }
}

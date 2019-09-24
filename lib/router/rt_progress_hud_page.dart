
import 'package:rt_progress_hud/rt_progress_hud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RTProgressHUDPage extends StatefulWidget {
  @override
  _RTProgressHUDPageState createState() => _RTProgressHUDPageState();
}

class _RTProgressHUDPageState extends State<RTProgressHUDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("rt_progress_hud"),
      ),
      body: _buildChild(),
    );
  }

  Widget _buildChild() {
    return GestureDetector(
      onTap: (){

      },
        child: Container());
  }
}

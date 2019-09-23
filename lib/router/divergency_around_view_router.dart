
import 'package:flutter/material.dart';
import 'package:divergency_around_view/divergency_around_view.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

class DivergencyAroundViewPage extends StatefulWidget {
  @override
  _DivergencyAroundViewState createState() => _DivergencyAroundViewState();
}

class _DivergencyAroundViewState extends State<DivergencyAroundViewPage> {

  DivergencyAroundController _aroundController;

  @override
  void initState() {
    _aroundController = DivergencyAroundController(DivergencyAroundValue());
    super.initState();
    _aroundController.addListener((){
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    Widget bg;

    if(_aroundController.animationValue != 0){
      bg = GestureDetector(
        onTap: (){
          _aroundController.closeHandle();
        },
        child: Opacity(
          opacity: _aroundController.animationValue,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0x88000000),
            ),
          ),
        ),
      );
    }else{
      bg = Container(
      );
    }
    return Material(
      child: Stack(
        children: <Widget>[
          Scaffold(
            appBar: CupertinoNavigationBar(middle: Text("divergency_around_view"),),
            body: Container(),
          ),
          Positioned(
              child: Stack(
                children: <Widget>[
                  bg,
                  Positioned(
                    right: 30,
                    bottom: 10,
//                child: Material(
//                  type: MaterialType.transparency,
                    child: DivergencyAroundView(
                      controller: _aroundController,
                      startAngle: pi / 2,
                      endAngle: pi / 2 + pi,
                      rotation: false,
                      cBottomItem: Text(
                        "工具箱",
                        style: TextStyle(
                            color: Color(0xff595959), fontSize: 12, height: 1.6),
                      ),
                      items: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 40,
                                height: 40,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "文字",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 40,
                                height: 40,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "文字",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 40,
                                height: 40,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "文字",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 40,
                                height: 40,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "文字",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 40,
                                height: 40,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "文字",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
//                )
                ],
              ))
        ],
      ),
    );
  }
}

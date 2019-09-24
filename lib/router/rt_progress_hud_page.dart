
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
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    RTProgressHUD.showText(context, "ceshi");
                    print("hahah");
                  },
                  child: Text("纯文字标题"),
                ),
                GestureDetector(
                  onTap: (){
                    RTProgressHUD.showSuccess(context, "ceshi");
                  },
                  child: Text("成功展示"),
                ),
                GestureDetector(
                  onTap: (){
                    RTProgressHUD.showWarn(context, "ceshi");
                  },
                  child: Text("警告展示"),
                ),
                GestureDetector(
                  onTap: (){
                    RTProgressHUD.showFail(context, "ceshi");
                  },
                  child: Text("失败展示"),
                ),
                GestureDetector(
                  onTap: (){
                    RTProgressHUD.instance.setStyle(HUDStyle.Indicator).setLabel("ceshi").show(context).scheduleDismiss();
                  },
                  child: Text("菊花展示"),
                ),
              ],
            ),
          ),
        ));
  }
}

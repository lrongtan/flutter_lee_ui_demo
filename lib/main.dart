import 'package:flutter/material.dart';
import 'router/divergency_around_view_router.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<_Item> _list = [];

  _Item _item1 = _Item(
      title: "divergency_around_view", routerPage: DivergencyAroundViewPage());

  @override
  void initState() {
    super.initState();
    _list = [_item1];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: Container(),
        middle: Text("lee_ui_demo"),
        backgroundColor: Colors.blue,
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemBuilder: _itemBuilder,
      itemCount: _list.length,
      itemExtent: 70,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    _Item _item = _list[index];
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(CupertinoPageRoute(builder: (context){
          return _item.routerPage;
        }));
      },
      child: Container(
//      color: Colors.white,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Text(_item.title),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

class _Item {
  String title;
  Widget routerPage;

  _Item({this.title, this.routerPage});
}

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(HomeApp());

/*
* 1.继承StatelessWidget唯一控件，创建主空间
* 2.初始化build 所有widget 都在build 处理业务
* 3.返回MaterialApp（）返回一个app，内部返回，title，theme，home
* 4.home 返回一个主控件
*
* */
class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
//      title: '第一个flutter 项目',
        theme: ThemeData(primaryColor: Colors.yellow),
        home: TestRoute() //Homepage(title: '第一个flutter 项目',),
        );
  }
}

class TestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TestRouteState();
  }
}

class TestRouteState extends State<TestRoute> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("dd"),
      ),
      body: Column(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
        ],
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            print(index);
          });
        },
      ),
    );
  }
}
/*
* 1.继承StatefulWidget 可变化控件
* 2.继承State 处理变化逻辑
* 3.初始化build 核心区域，返回Scaffold（）方法，内部返回appBar，Body，FloatBtn
*
* */
//官方例子
class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<Homepage> {
  int _numCount = 0;

  void _incrementCounter() {
    setState(() {
      _numCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('body center child:colum children'),
            Text(
              '$_numCount',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Count App',
    debugShowCheckedModeBanner: false,
    //  color: Colors.black26,
    home: App(),
  ));
}

class App extends StatefulWidget {
  @override
  createState() => _AppState();
}

class _AppState extends State<App> {
  final _textStyle = TextStyle(
    fontSize: 30,
    color: Colors.black26,
  );

  int _count = 0;

  void _setCount(int value) => setState(() => _count = value);

  void _add() => _setCount(_count + 1);

  void _less() => _setCount(_count - 1);

  void _reset() => _setCount(0);

  @override
  Widget build(BuildContext context) {
    final List<Widget> _actions = <Widget>[
      SizedBox(width: 5.0),
      FloatingActionButton(
        onPressed: _less,
        child: Center(
          child: Icon(Icons.remove),
        ),
      ),
      Expanded(child: SizedBox()),
      FloatingActionButton(
        onPressed: _add,
        child: Center(
          child: Icon(Icons.add),
        ),
      ),
      SizedBox(width: 5.0),
      FloatingActionButton(
        onPressed: _reset,
        child: Center(
          child: Text('0'),
        ),
      ),
      SizedBox(width: 5.0),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('State Full Widget'),
          centerTitle: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _actions),
        body: _body(
          children: <Widget>[
            Text(
              'Counter',
              style: _textStyle,
            ),
            Text(
              '$_count',
              style: _textStyle,
            ),
          ],
        ));
  }

  Widget _body({List<Widget> children}) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children),
    );
  }
}

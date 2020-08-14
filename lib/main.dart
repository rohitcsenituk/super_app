import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
//        canvasColor: Colors.lightGreen.shade100,
//        floatingActionButtonTheme: FloatingActionButtonThemeData(
//            backgroundColor: Colors.lightGrerenAccent,
//            splashColor: Colors.redAccent,
//            shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(8.0))),
      ),
      home: MyHomePage(
        title: 'HOME',
      ),
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
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
          ],
          flexibleSpace: SafeArea(
            child: Icon(
              Icons.camera_alt,
              size: 75.0,
              color: Colors.white70,
            ),
          ),
          bottom: PreferredSize(
              child: Container(
                color: Colors.lightGreen.shade100,
                height: 75.0,
                width: double.infinity,
                child: Center(
                  child: Text('BOTTOM'),
                ),
              ),
              preferredSize: Size.fromHeight(75.0)),
          leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                debugPrint('Icon Pressed');
              }),
          title: Text(widget.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const RowWidget(),
                    Padding(padding: EdgeInsets.all(16.0)),
                    const RowAndColumnWidget()
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class RowAndColumnWidget extends StatelessWidget {
  const RowAndColumnWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              color: Colors.yellow,
            ),
            Padding(padding: EdgeInsets.all(16.0)),
            Container(
              height: 40.0,
              width: 40.0,
              color: Colors.amber,
            ),
            Padding(padding: EdgeInsets.all(16.0)),
            Container(
              height: 20.0,
              width: 20.0,
              color: Colors.brown,
            ),
            Divider(),
            const RowAndStackWidget(),
            Divider(),
            Text('End of the Line'),
          ],
        )
      ],
    );
  }
}

class RowAndStackWidget extends StatelessWidget {
  const RowAndStackWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Next step we'll add more widgets
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 100.0,
          child: Stack(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow,
              ),
              Container(width: 60.0, height: 60.0, color: Colors.amber),
              Container(width: 40.0, height: 40.0, color: Colors.brown),
            ],
          ),
        )
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.yellow,
          width: 40.0,
          height: 40.0,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Expanded(
          child: Container(
            width: 40.0,
            height: 40.0,
            color: Colors.amber,
          ),
        ),
        Padding(padding: EdgeInsets.all(16.0)),
        Container(
          width: 40.0,
          height: 40.0,
          color: Colors.brown,
        )
      ],
    );
  }
}

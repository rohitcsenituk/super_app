import 'package:flutter/material.dart';
import 'package:super_app/widgets/column_widget.dart';
import 'package:super_app/widgets/container_with_decoration.dart';
import 'package:super_app/widgets/nested_column_row.dart';
import 'package:super_app/widgets/popup_menu_button.dart';
import 'package:super_app/widgets/row_widget.dart';

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
        bottom: PopupMenuButtonWidget(),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ContainerWithBoxDecorationWidget(),
                const ColumnWidget(),
                const RowWidget(),
                Divider(),
                const ColumnAndRowNestingWidget(),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Text('Flag'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Icon(Icons.flag),
                      color: Colors.lightGreen,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Save'),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Icon(Icons.save),
                      color: Colors.lightGreen,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Default - left button
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.flight),
                    ),
                    // Customize - right button
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.flight),
                      iconSize: 42.0,
                      color: Colors.lightGreen,
                      tooltip: 'Flight',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.lightGreen.shade100,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.lightGreen.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
    );
  }
}

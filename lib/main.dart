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
        primarySwatch: Colors.blue,
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
        title: Text('ImagesAssets'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const ImageAndIconWidget(),
              Divider(
                thickness: 5.0,
              ),
              const BoxDecoratorWidget(),
              Divider(
                thickness: 5.0,
              ),
              const InputDecoratorsWidget()
            ],
          ),
        ),
      )),
    );
  }
}

class InputDecoratorsWidget extends StatelessWidget {
  const InputDecoratorsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Username",
            labelStyle: TextStyle(color: Colors.purple),
          ),
        ),
        Divider(
          height: 50.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Enter your notes',
          ),
        ),
      ],
    );
  }
}

class BoxDecoratorWidget extends StatelessWidget {
  const BoxDecoratorWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 10.0, offset: Offset(5.0, 8.0))
          ]),
    );
  }
}

class ImageAndIconWidget extends StatelessWidget {
  const ImageAndIconWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
          width: MediaQuery.of(context).size.width / 3,
          image: AssetImage('assets/images/charminar.png'),
          //color: Colors.red,
          fit: BoxFit.scaleDown,
        ),
        Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png',
          width: MediaQuery.of(context).size.width / 3,
        ),
        Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'bg_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: CustomPaint(
          painter: BackgroundDrawer(),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: const [
                  DrawerHeader(child: FlutterLogo()),
                  ListTile(
                    leading: Icon(Icons.headset),
                    title: Text('Test'),
                    subtitle: Text('Sub title test'),
                  ),
                  ListTile(
                    leading: Icon(Icons.add_alert),
                    title: Text('Test'),
                    subtitle: Text('Sub title test'),
                  ),
                  ListTile(
                    leading: Icon(Icons.add_location_alt),
                    title: Text('Test'),
                    subtitle: Text('Sub title test'),
                  ),
                  ListTile(
                    leading: Icon(Icons.anchor_sharp),
                    title: Text('Test'),
                    subtitle: Text('Sub title test'),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
      body: Center(),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const Aboutus());
}

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
                onTap: () {
                  showAboutDialog(
                      context: context,
                      applicationIcon: FlutterLogo(),
                      applicationName: 'E PLASTICA',
                      applicationVersion: '0.0.1',
                      applicationLegalese: 'developed by      ',
                      children: <Widget>[
                        Text(
                            'it is a service which help you to sell your old and throw away stuff in a organized manner'),
                        Text('YOUR REQUEST'),
                        Text('drop in your name,address,contact number'),
                        Text('WE COME'),
                        Text(
                            'one of us come and collect stuff that you want to sell'),
                        Text('CASH OR WALLET'),
                        Text(
                            'get paid in hard by the person who came for collecting your stuff'),
                        Text(
                            'you can give the details of the types of that you have'),
                      ]);
                },
                title: Text('SHOW ABOUT PAGE'))
          ],
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('SHOW ABOUT PAGE'),
          onPressed: () {},
        ),
      ),
    );
  }
}

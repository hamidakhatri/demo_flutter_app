import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterappwithwaleed/my_new_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Chatter Box'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  IconData myIcon = Icons.favorite_border;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(2.0),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyNewScreen()),
                );
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://download.ams.birds.cornell.edu/api/v1/asset/132841291/medium'),
              ),
              title: Text('Sam',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  )),
              subtitle: Text('They argue a lot...'),
              trailing: Icon(Icons.favorite_border),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://thumbs-prod.si-cdn.com/3n9RUFERlyCPoyPq4Vpg2MWmgw4=/fit-in/1600x0/https://public-media.si-cdn.com/filer/46/c7/46c7da28-e266-497b-9bc3-d25e291ee962/istock-1144653112.jpg'),
              ),
              title: Text('Paul',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  )),
              subtitle: Text('No time for bull...'),
              trailing: Icon(Icons.favorite_border),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1550853024-fae8cd4be47f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80'),
              ),
              title: Text('Brian',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  )),
              subtitle: Text('Such a lonesome one...'),
              trailing: Icon(Icons.favorite_border),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://www.thespruce.com/thmb/bS1rvJQcPY2BwMoeAOT_l8x__0Q=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/red-summer-tanager-58991d123df78caebc049ac4.jpg'),
              ),
              title: Text('Nick',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  )),
              subtitle: Text('Red for the win...'),
              trailing: Icon(Icons.favorite_border),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://test.cdn.download.ams.birds.cornell.edu/api/v1/asset/202984001'),
              ),
              title: Text('Peacock',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  )),
              subtitle: Text('I have to be at the airport...'),
              trailing: Icon(Icons.favorite_border),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://static01.nyt.com/images/2020/04/03/science/03TB-KINGFISHER1/03TB-KINGFISHER1-mediumSquareAt3X.jpg'),
              ),
              title: Text('Redrick',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  )),
              subtitle: Text('Such a beautiful day!'),
              trailing: Icon(Icons.favorite_border),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Spacer(flex: 12),
                Icon(Icons.arrow_left, size: 30),
                Spacer(flex: 6),
                Icon(Icons.arrow_right, size: 30),
                Spacer(flex: 12),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
            ),
            Text(
              'Thank you!',
              style: Theme.of(context).textTheme.title,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Spacer(flex: 3),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add_a_photo),
                ),
                Spacer(flex: 3),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.call),
                ),
                Spacer(flex: 3),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.payment),
                ),
                Spacer(flex: 3),
              ],
            ),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    return buildList(context);
  }

  Card buildListItem(BuildContext context) {
    return Card(
      child: Column(children: [
        Container(
            width: MediaQuery.of(context).size.width - 8,
            child: Image.network(
                "https://mavimet.files.wordpress.com/2018/02/img_1446-2-800x600.jpg")),
        Text(
          'Pozycze psa na podryw',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildLocationText(Icons.location_on, 'Mazowieckie'),
            buildLocationText(Icons.access_time, '12:37'),
          ],
        ),
      ]),
    );
  }

  Padding buildLocationText(IconData location_on, String s) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(location_on),
          ),
          Text(s)
        ],
      ),
    );
  }

  Widget buildList(BuildContext context) {
    final itemsList = ["1", "2", "3", "4", "5", "6"];

    return ListView.builder(
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        final item = itemsList[index];
        return buildListItem(context);
      },
    );
  }
}

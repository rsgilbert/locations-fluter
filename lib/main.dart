import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const LocationsApp());

class LocationsApp extends StatelessWidget {
  const LocationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Locations App',
        home: Scaffold(
          appBar: AppBar(title: const Text('Location')),
          body: ListView(children: [
            imageSection,
            titleSection,
            buttonRow,
            descriptionSection
          ]),
        ));
  }
}

Widget titleSection = Container(
    padding: EdgeInsets.all(8),
    child: Row(
      children: [
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  "Mountain Elgon",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            Text("Mbale, Eastern Uganda",
                style: TextStyle(color: Colors.grey[600]))
          ],
        )),
        Icon(Icons.star, color: Colors.red),
        Text('41')
      ],
    ));

Widget buttonRow = Container(
    child: Row(children: [
  _buildButtonColumn(Colors.lightBlue, Icons.call, "CALL"),
  _buildButtonColumn(Colors.lightBlue, Icons.telegram, "ROUTE"),
  _buildButtonColumn(Colors.lightBlue, Icons.share, "SHARE"),
]));

Widget _buildButtonColumn(Color color, IconData icon, String label) {
  return Expanded(
      child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        child: Icon(icon, color: color),
        padding: EdgeInsets.all(4),
      ),
      Text(label, style: TextStyle(color: color))
    ],
  ));
}

Widget descriptionSection = const Padding(
  padding: EdgeInsets.all(16),
  child: Text(
    "Mount Elgon is an extinct shield volcano on the border of Uganda and Kenya, north of Kisumu and west of Kitale. The mountain's highest point, named \"Wagagai\", is located entirely within Uganda. Although there is no verifiable evidence of its earliest volcanic activity, geologists estimate that Mount Elgon is at least 24 million years old, making it the oldest extinct volcano in East Africa. The mountain's name originates from its Maasai name, Elgonyi.",
    softWrap: true,
  ),
);

Widget imageSection = Image.asset(
  "images/elgon.jpg",
  fit: BoxFit.cover,
);

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Sepatu | Doni Maulana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> _shoes = [
    {
      'name': 'VANS SK8 HIGHT Black-White',
      'price': 88795,
      'image': 'assets/images/vans1.jpg',
    },
    {
      'name': 'VANS SLIP ON CHECKERBOARD)',
      'price': 20995,
      'image': 'assets/images/vans2.jpg',
    },
    {
      'name': 'VANS AUTHENTIC BLACK-WHITE)',
      'price': 212605,
      'image': 'assets/images/vans3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: ListView.builder(
        itemCount: _shoes.length,
        itemBuilder: (context, index) {
          final shoe = _shoes[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.asset(
                shoe['image'],
                height: 50,
              ),
              title: Text(shoe['name']),
              trailing: Text('\$${shoe['price'].toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}

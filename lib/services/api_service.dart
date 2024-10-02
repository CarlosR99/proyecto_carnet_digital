import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _response = '';

  Future<void> fetchData() async {
    final url = Uri.parse('http://localhost:3000/');
    final response = await http.get(url);
    
    setState(() {
      _response = response.body;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conexión Flutter - Node.js'),
      ),
      body: Center(
        child: Text(_response.isNotEmpty ? _response : 'Cargando...'),
      ),
    );
  }
}

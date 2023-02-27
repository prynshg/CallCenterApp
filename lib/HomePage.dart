import 'package:callcenterapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<HomePage> {
  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Call center app'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _numberCtrl,
                decoration: const InputDecoration(labelText: "Phone Number"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: const Text("Test Call"),
              onPressed: () async {
                FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
              },
            ),
            ElevatedButton(
              child: const Text("Call logs"),
              onPressed: () => Navigator.pushNamed(context, MyRoutes.callDetails),
            )
          ],
        ),
      ),
    );
  }
}
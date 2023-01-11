import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String groupSimple = '';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dddd"),
      ),
      body: Column(
        children: [
          Text("TextField #1"),
          TextFormField(),
          Text("TextField #2"),
          TextFormField(
            obscureText: true,
          ),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: "username",
              hintText: "please enter username",
              hintStyle: TextStyle(color: Colors.amber),
            ),
          ),
          Text("RadioListTile #1 simple"),
          RadioListTile(
            title: Text('title 1'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'title1',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
            },
          ),
          RadioListTile(
            title: Text('title 2'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'title2',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
            },
          ),
          RadioListTile(
            tileColor: Colors.amber,
            title: Text('title 3'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'title3',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
            },
          ),
          Text(groupSimple),
          Text("CheckboxListTile  #1 Checkbox class"),
          CheckboxListTile(
              title: Text('Libary Implementation of Searching Algorithm'),
              value: isChecked,
              onChanged: ((value) {
                setState(() {
                  isChecked = value!;
                });
              }))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Company extends StatefulWidget {
  const Company({Key? key}) : super(key: key);

  @override
  State<Company> createState() => _CompanyState();
}
TextEditingController nameController = TextEditingController();
TextEditingController wakilController = TextEditingController();
TextEditingController datacash = TextEditingController();
TextEditingController compobjective = TextEditingController();

class _CompanyState extends State<Company> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text('Welcome !',style: TextStyle(fontSize: 20),),),
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: wakilController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Wakil',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: datacash,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Data Cash',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: compobjective,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Comp Objective',
              ),
            ),
          ),
          SizedBox(height: 50,

          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Save'),
                onPressed: () {
                  print(nameController.text);
                  print(wakilController.text);
                },
              )
          ),
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //To get user input from the textfield
  // ignore: non_constant_identifier_names
  final TextEditingController _UserInput = TextEditingController();
  var TypeOfFruite = '';
  var number = 0;
  void onpress() {
    setState(() {
      number = int.parse(_UserInput.text);
    });
    setState(() {
      TypeOfFruite = Fruits[number];
    });
  }

  // ignore: non_constant_identifier_names
  var Fruits = [
    'Apple',
    'Grapes',
    'Orange',
    'Rambutan',
    'Banana',
    'Blueberry',
    'Cherry',
    'Lime',
    'Watermelon',
    'Peach',
    'Pineapple',
    'Strawberry',
    'Coconut',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 192, 201, 236),
        appBar: AppBar(
            title: const Center(
              child: Text('Assignment'),
            ),
            backgroundColor: Colors.blue),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                TypeOfFruite,
                style: const TextStyle(
                    fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              TextField(
                controller: _UserInput,
                decoration: const InputDecoration(
                    hintText: "Enter any number between 0-12",
                    labelText: "Type here",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder()),
                //Keyboard type
                keyboardType: const TextInputType.numberWithOptions(),

                maxLength: 2,
              ),
              const SizedBox(
                height: 35,
              ),
              RaisedButton(
                color: Colors.blue,
                child: const Text(
                  'Send',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: (onpress),
              ),
              const SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).padding.top),
            Text("This App collects user input and display it on the screen", style: TextStyle(
              fontSize: 34
            )),
            SizedBox(height: 10),
            Text('Enter anything in the input field below, then click the show content button to display what is in the input field', style: TextStyle(
              fontSize: 13
            )),
            SizedBox(height: 30),

            Text(
              'Whatever is in the input field will be displayed in the box below', style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 0.5)
              ),
              child: Text(
                '$text',
              ),
            ),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
              controller: textEditingController,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              setState(() {
                text = textEditingController.text;
              });
            }, child: Text("Show Content"))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Text("My name is Abdulkabir Toyyib Inuolaji", style: TextStyle(
          fontSize: 13
        ), textAlign: TextAlign.center,),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


C:/Users/toymaxcode/Documents/projects/apps/flutter/zuri_hng_tasks/task_1/build/web
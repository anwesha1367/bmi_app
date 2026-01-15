import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtcontroller=TextEditingController();
  var ftcontroller=TextEditingController();
  var incontroller=TextEditingController();
  // var result="";
  // var bgColor;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Your BMI"),
      ),
      body:Center(
        child: Container(
          width:300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BMI',style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold,
              ),),
              TextField(
                controller: wtcontroller,
                decoration: InputDecoration(
                  label: Text('Enter your weight in kg:'),
                  prefixIcon: Icon(Icons.line_weight)
                ),
                keyboardType: TextInputType.number,
              ),SizedBox(height: 20,),
              TextField(
                controller: ftcontroller,
                decoration: InputDecoration(
                    label: Text('Enter your height in feet:'),
                    prefixIcon: Icon(Icons.height)
                ),
                keyboardType: TextInputType.number,
              ),SizedBox(height: 20,),
              TextField(
                controller: incontroller,
                decoration: InputDecoration(
                    label: Text('Enter your height in inches:'),
                    prefixIcon: Icon(Icons.height_outlined)),
                keyboardType: TextInputType.number,
              )
            ],
          ),
        ),
      )

    );
  }
}

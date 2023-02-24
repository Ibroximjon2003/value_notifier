import 'package:flutter/material.dart';
import 'package:value_notifier/bottom_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const Text('Home page'),),
      body: Column(children: [
        const SizedBox(height: 16,),
        const Text('Widget 1',style: TextStyle(fontSize: 30,color: Colors.blue),),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Enter a value',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        ElevatedButton(onPressed: (){
          BottomBar.enteredValue.value = _controller.text;

        }, child: const Text('Send data to another widget'),),
        const Spacer(),
        const Divider(),
       const BottomBar(),

      ],),

    );
  }
}

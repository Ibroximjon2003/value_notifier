import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);
  static ValueNotifier<String> enteredValue = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
         const SizedBox(
            height: 16,
          ),
          const Text(
            'Widget 2',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
         const SizedBox(
            height: 32,
          ),
         const Text('Entered in Widget 1 value'),
          ValueListenableBuilder(
            valueListenable: enteredValue,
            builder: (BuildContext context, String newValue, Widget? child) {
              return Text(
                newValue,
                style: const TextStyle(fontSize: 30, color: Colors.blue),
              );
            },
          ),

        ],
      ),
    );
  }
}

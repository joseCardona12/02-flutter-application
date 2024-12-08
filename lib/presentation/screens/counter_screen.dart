import 'package:flutter/material.dart';
import 'package:flutter_application_02/widgets/FloatingActionButton_widget.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int counterNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Counter screen"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  counterNumber = 0; // Change the value or reset the value
                });
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counterNumber',
                style: const TextStyle(
                    fontSize: 120, fontWeight: FontWeight.w100)),
            Text(counterNumber == 1 ? "Click" : "Clicks",
                style: const TextStyle(fontSize: 20))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButtonWidget(
            action: (){
              setState(() {
                counterNumber = 0; // Reset the value
              });
            },
            icon: Icons.refresh_rounded,
          ),
          FloatingActionButtonWidget(
            action: (){
              setState(() {
                counterNumber++;
              });
            },
            icon: Icons.plus_one,
          ),
          FloatingActionButtonWidget(
            action: (){
              setState(() {
                if(counterNumber == 0) return;
                counterNumber--;
              });
            },
            icon: Icons.exposure_minus_1,
          )
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MySweep(),
    debugShowCheckedModeBanner: false,
    title: 'Sweep Gradient',
  ));
}

class MySweep extends StatelessWidget {
  const MySweep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sweep Gradient',
          style: TextStyle(
              color: Colors.brown, fontSize: 30, fontStyle: FontStyle.italic),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.orange],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: SweepGradient(
                  colors: [Colors.yellow, Colors.green, Colors.blue],
                  stops: [0.1, 0.6, 0.9],
                )),
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: SweepGradient(
                      colors: [Colors.yellow, Colors.green, Colors.red],
                      stops: [0.2, 0.6, 0.9],
                      startAngle: 0.5,
                      endAngle: 0.7,
                    ),
                  ),
                ))
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}

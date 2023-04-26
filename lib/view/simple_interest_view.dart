import 'package:flutter/material.dart';

import '../model/arthematic.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  double time = 0;
  double rate = 0;
  double principle = 0;
  double result = 0;

  late Arithmetic arithmetic;
  void simpleInterest() {
    arithmetic = Arithmetic();
    setState(() {
      result = arithmetic.simpleInterest(principle, rate, time);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {
                time = double.parse(value);
              },
              decoration: InputDecoration(
                  labelText: "Enter principle",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.parse(value);
              },
              decoration: InputDecoration(
                  labelText: "Enter Time",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                principle = double.parse(value);
              },
              decoration: InputDecoration(
                  labelText: "Enter Rate",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  simpleInterest();
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 97, 161, 234),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "The simple interest is $result",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
    ;
  }
}

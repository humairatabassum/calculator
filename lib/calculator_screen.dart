import 'package:calculator/button_data.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            //output part
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  '0',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ),

            //buttons part
            for (int i = 0; i < Btn.buttons.length; i++)
              Expanded(
                child: Row(
                  children: [
                    for (int j = 0; j < Btn.buttons[i].length; j++)
                      Expanded(
                        flex: Btn.buttons[i][j] == Btn.equal ? 2 : 1,
                        child: buildButton(Btn.buttons[i][j]),
                      )
                  ],
                ),
              ),

            // ...List.generate(
            //   Btn.buttons.length,
            //   (idx) => Row(
            //     children: [
            //       ...List.generate(
            //         Btn.buttons[idx].length,
            //         (index) => buildButton(Btn.buttons[idx][index]),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(value) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 198, 225, 226),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}

import 'package:calculator/button_data.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double? num1;
  double? num2;
  String? operand;
  String output = "0";

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
                child: Text(
                  output,
                  style: const TextStyle(
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
                        child: InkWell(
                          borderRadius: BorderRadius.circular(100),
                          splashColor: Colors.amber,
                          onTap: () {
                            calculate(i, j);
                          },
                          child: buildButton(
                            Btn.buttons[i][j],
                            Btn.colors[i][j],
                          ),
                        ),
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

  Widget buildButton(String value, Color color) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: const Color.fromARGB(255, 12, 12, 12),
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }

  calculate(int i, int j) {
    //for num1
    if (num1 == null && num2 == null && operand == null) {
      if (Btn.buttons[i][j] == Btn.n0) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.dot) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.del) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.clr) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.mod) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.div) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.mult) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.sub) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.add) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.equal) {
        return;
      }

      setState(() {
        output = output + Btn.buttons[i][j]; //show
      });
      num1 = double.parse(output); //backnd
      //print num1
      print(num1);
      return;
    } else if (num1 != null && operand == null) {
      if (Btn.buttons[i][j] == Btn.n1) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n2) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n3) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n4) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n5) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n6) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n7) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n8) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n9) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.n0) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.dot) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.del) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.clr) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.equal) {
        return;
      }
      setState(() {
        output = output + Btn.buttons[i][j]; //show
      });
      operand = Btn.buttons[i][j]; //backnd
      print(operand);
      return;
    } else if (num1 != null && operand != null && num2 == null) {
      if (Btn.buttons[i][j] == Btn.dot) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.del) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.clr) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.mod) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.div) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.mult) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.sub) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.add) {
        return;
      }
      if (Btn.buttons[i][j] == Btn.equal) {
        return;
      }
      setState(() {
        output = output + Btn.buttons[i][j]; //show
      });
      num2 = double.parse(Btn.buttons[i][j]); //backnd
      print(num2);
      return;
    } else if (Btn.buttons[i][j] == Btn.equal) {
      if (num1 == null || num2 == null || operand == null) {
        return;
      }
      if (operand == Btn.div && num2 == 0) {
        setState(() {
          output = "Error";
        });
      }
      if (operand == Btn.add) {
        setState(() {
          output = (num1! + num2!).toString();
        });
      }
      if (operand == Btn.sub) {
        setState(() {
          output = (num1! - num2!).toString();
        });
      }
      if (operand == Btn.mult) {
        setState(() {
          output = (num1! * num2!).toString();
        });
      }
      if (operand == Btn.div) {
        setState(() {
          output = (num1! / num2!).toString();
        });
      }
      if (operand == Btn.mod) {
        setState(() {
          output = (num1! % num2!).toString();
        });
      }
    } else if (Btn.buttons[i][j] == Btn.clr) {
      setState(() {
        num1 = null;
        num2 = null;
        operand = null;
        output = "0";
      });
    } else if (Btn.buttons[i][j] == Btn.del) {
      setState(() {
        output = output.substring(0, output.length - 1);
      });
    }
  }
}

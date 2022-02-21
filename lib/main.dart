import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = '0';
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Calculator'),
          backgroundColor: Colors.black26,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.only(right : 25.0, left: 50.0),
              child:
              AutoSizeTextField(
                maxLength: 100,
                maxLengthEnforced: true,
                controller: controller,
                textAlign: TextAlign.right,
                textAlignVertical: TextAlignVertical.center,
                maxLines: 1,
                keyboardType: TextInputType.number,
                enabled: false,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "0",
                ),
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 50,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('C'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = "";
                      });
                    },
                  ),
                ), //C
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('⌫'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text
                            .substring(0, controller.text.length - 1);
                        print(controller.text);
                      });
                    },
                  ),
                ), // %
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('%'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + "%";
                        print(controller.text);
                      });
                    },
                  ),
                ), // %
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('/'),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () => {
                      setState(() {
                        controller.text = controller.text + "/";
                        print(controller.text);
                      })
                    },
                  ),
                ),
                const Spacer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      child: const Text('7'),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        setState(() {
                          controller.text = controller.text + "7";
                          print(controller.text);
                        });
                      },
                    )), // 7
                const Spacer(),
                Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      child: const Text('8'),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        setState(() {
                          controller.text = controller.text + "8";
                          print(controller.text);
                        });
                      },
                    )), // 8
                const Spacer(),
                Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      child: const Text('9'),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        setState(() {
                          controller.text = controller.text + "9";
                          print(controller.text);
                        });
                      },
                    )), // 9
                const Spacer(),
                Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      child: const Text('X'),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        setState(() {
                          controller.text = controller.text + "*";
                          print(controller.text);
                        });
                      },
                    )), // X
                const Spacer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      child: const Text('4'),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        setState(() {
                          controller.text = controller.text + "4";
                          print(controller.text);
                        });
                      },
                    )), // 4
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('5'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + "5";
                        print(controller.text);
                      });
                    },
                  ),
                ), // 5
                const Spacer(),
                Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      child: const Text('6'),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        setState(() {
                          controller.text = controller.text + "6";
                          print(controller.text);
                        });
                      },
                    )), // 6
                const Spacer(),
                Expanded(
                    flex: 2,
                    child: FloatingActionButton(
                      child: const Text('-'),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        setState(() {
                          controller.text = controller.text + "-";
                          print(controller.text);
                        });
                      },
                    )), // -
                const Spacer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('1'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + "1";
                        print(controller.text);
                      });
                    },
                  ),
                ), // 1
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('2'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + "2";
                        print(controller.text);
                      });
                    },
                  ),
                ), // 2
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('3'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + "3";
                        print(controller.text);
                      });
                    },
                  ),
                ), // 3
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('+'),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + "+";
                        print(controller.text);
                      });
                      const TextStyle (
                          fontSize: 40
                      );
                    },
                  ),
                ), // +
                const Spacer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('0'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        controller.text = controller.text + '0';
                        print(controller.text);
                      });
                    },
                  ), // 0
                ),
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: FloatingActionButton(
                    child: const Text('.'),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      setState(() {
                        if (controller.text.isEmpty) {
                          controller.text = controller.text + '0.';
                        } else {
                          controller.text = controller.text + '.';
                        }
                        print(controller.text);
                      });
                    },
                  ), // "."
                ),
                const Spacer(),
                Expanded(
                  flex: 5,
                  child: FloatingActionButton(
                    child: const Text('='),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      try {
                        Parser p = Parser();
                        Expression exp = p.parse(controller.text);
                        ContextModel cm = ContextModel();
                        String s =
                        exp.evaluate(EvaluationType.REAL, cm).toString();
                        print(s);
                        var u = s.replaceAll(RegExp(r"([.]*0)(?!.*\d)"), "");
                        controller.text = u;
                      } catch (e) {
                        if (controller.text.isNotEmpty) {
                          controller.text = '';
                        }
                      }
                    },
                  ), // =
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

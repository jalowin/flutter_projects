import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('CounterScreen'),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Número de Clicks/Tabs',
              style: fontSize,
            ),
            Text(
              '$counter',
              style: fontSize,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(
            Icons.exposure_plus_1_outlined,
            color: Colors.white,
            size: 40.0,
            semanticLabel: 'Plus Click',
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(
            Icons.restore,
            color: Colors.white,
            size: 40.0,
            semanticLabel: 'Reset Click',
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(
            Icons.exposure_minus_1_outlined,
            color: Colors.white,
            size: 40.0,
            semanticLabel: 'Minus Click',
          ),
        ),
      ],
    );
  }
}

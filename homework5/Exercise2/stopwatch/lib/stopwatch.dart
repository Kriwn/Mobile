import 'package:flutter/material.dart';

import 'dart:async';

class _StopWatchState extends State<StopWatch> {
  bool isTicking = false;
  int secounds = 0;
  late Timer timer;

  void _onTick(Timer time) {
    if (mounted) {
      setState(() {
        secounds += 1;
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String secoundsText() => secounds == 1 ? 'secound' : 'seconds';
    return Scaffold(
        appBar: AppBar(
          title: const Text('StopWatch'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$secounds ${secoundsText()}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: isTicking ? null : _startTimer,
                  child: const Text('Start')),
              const SizedBox(width: 20),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: isTicking ? _stopTimer : null,
                child: const Text('Stop'),
              )
            ])
          ],
        ));
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(microseconds: 1), _onTick);
    setState(() {
      secounds = 0;
      isTicking = true;
    });
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      isTicking = false;
    });
  }
}

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

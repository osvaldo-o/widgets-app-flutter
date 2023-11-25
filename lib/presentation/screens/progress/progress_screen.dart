import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular progress indicators'),
          SizedBox(height: 20),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black38,
          ),
          SizedBox(height: 20),
          Text('Circular y Linear controlado'),
          SizedBox(height: 10),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(
                const Duration(milliseconds: 300), (value) => (value * 2) / 100)
            .takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    value: progressValue,
                    strokeWidth: 2,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                      child: LinearProgressIndicator(
                    value: progressValue,
                  ))
                ],
              ));
        });
  }
}

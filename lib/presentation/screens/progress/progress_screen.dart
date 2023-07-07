import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress indicators'),
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
          SizedBox(
            height: 30,
          ),
          Text('Circular border indicator'),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black38,
          ),
          SizedBox(
            height: 30,
          ),
          Text('Circular y lineal  controlado'),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:Stream.periodic(const Duration(milliseconds: 300),(value){
        return (value *2)/100;
  }).takeWhile((value) => value < 100),

      builder: (context, snapshot) {
        final progressValue =snapshot.data ?? 0;

        return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              value: progressValue,
              strokeWidth: 2,
              backgroundColor: Colors.black12,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: progressValue,
              ))
          ],
        ),
      );
      }, 
    );
  }
}

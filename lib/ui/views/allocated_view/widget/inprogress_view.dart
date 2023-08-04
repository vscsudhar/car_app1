import 'package:flutter/material.dart';

class InprogressView extends StatefulWidget {
  const InprogressView({super.key});

  @override
  State<InprogressView> createState() => _InprogressViewState();
}

class _InprogressViewState extends State<InprogressView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Text('Inprogress'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PendingView extends StatefulWidget {
  const PendingView({super.key});

  @override
  State<PendingView> createState() => PendingViewState();
}

class PendingViewState extends State<PendingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: Text('Pending'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BatchesScreen extends StatefulWidget {
  const BatchesScreen({super.key});

  @override
  State<BatchesScreen> createState() => _BatchesScreenState();
}

class _BatchesScreenState extends State<BatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Text("Batches screen"),
      ),
    );
  }
}

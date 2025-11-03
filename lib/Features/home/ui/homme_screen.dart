import 'package:flutter/material.dart';

class HommeScreen extends StatelessWidget {
  const HommeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}

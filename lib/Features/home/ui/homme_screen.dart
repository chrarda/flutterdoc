import 'package:flutter/material.dart';

class HommeScreen extends StatelessWidget {
  const HommeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}

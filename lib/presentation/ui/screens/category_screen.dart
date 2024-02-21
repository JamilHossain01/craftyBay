import 'package:flutter/material.dart';

class CateGoryScreen extends StatefulWidget {
  const CateGoryScreen({super.key});

  @override
  State<CateGoryScreen> createState() => _CateGoryScreenState();
}

class _CateGoryScreenState extends State<CateGoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Aliya',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

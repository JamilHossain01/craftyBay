import 'package:flutter/material.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({
    super.key,
    required this.tittle,
  });

  final String tittle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0,
          color: Colors.amber.shade100,
          child: const Padding(
            padding: EdgeInsets.all(24),
            child: Icon(
              Icons.computer_outlined,
              color: Colors.amber,
              size: 34,
            ),
          ),
        ),
        Text(
          tittle,
          style: const TextStyle(color: Colors.amber, fontSize: 16),
        )
      ],
    );
  }
}

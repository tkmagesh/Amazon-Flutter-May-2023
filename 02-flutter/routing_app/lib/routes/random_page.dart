import 'package:flutter/material.dart';

class RandomPage extends StatelessWidget {
  const RandomPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text("Random"),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Back"),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:routing_app/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteGenerator.randomPage);
              },
              child: const Text("Random"),
            ),
          ),
        ],
      ),
    );
  }
}

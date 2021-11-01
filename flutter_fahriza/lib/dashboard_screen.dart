import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Builder(
            builder: (context) {
              return const Icon(Icons.ac_unit);
            }
          ),
        ],
      ),
    );
  }
}
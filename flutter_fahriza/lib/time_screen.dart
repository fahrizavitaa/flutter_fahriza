import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  const Time({Key? key}) : super(key: key);
  TimeOfDay waktu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: RaisedButton(
          child: Text('$waktu'),
          onPressed: () {
            showTimePicker(
              context: context, 
              initialTime: TimeOfDay.now(),
            ).then((value) {
            setState(() {
              waktu = value;
            });
            }),
          },
        ),
      ),
    );
  }
}
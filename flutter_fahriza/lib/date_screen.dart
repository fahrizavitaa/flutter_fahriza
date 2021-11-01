import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({Key? key}) : super(key: key);
  DateTime tanggal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: RaisedButton(
          child: Text('tanggal'),
          onPressed: () {
            showDatePicker(
              context: context, 
              initialDate: DateTime.now(), 
              firstDate: DateTime(2000, 1, 1), 
              lastDate: DateTime(2021, 12, 31),
            ).then((value) {
              SetState(() {
                tanggal = value;
             });
            }),
          },
        ),
      ),
    );
  }
} 
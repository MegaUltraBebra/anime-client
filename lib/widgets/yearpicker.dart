import 'package:flutter/material.dart';


Future<void> yearPickerDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Select Year"),
        content: Container(
          width: 300,
          height: 300,
          child: YearPicker(
            firstDate: DateTime(1970),
            lastDate: DateTime(DateTime.now().year),
            initialDate: DateTime.now(),
            selectedDate: DateTime.now(),
            onChanged: (DateTime dateTime) {
              Navigator.pop(context, dateTime.year);
            },
          ),
        ),
      );
    }
  );
}

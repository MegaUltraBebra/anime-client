import 'package:anime_client/themes/styles.dart';
import 'package:flutter/material.dart';

  class YearPickerDialog extends StatelessWidget {
  int selectedYear;
  
  YearPickerDialog({super.key, this.selectedYear = 1970});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: const Text("Выберите год"),
          content: SizedBox(
            width: MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height*0.3,
            child: YearPicker(
              firstDate: DateTime(1970),
              lastDate: DateTime(DateTime.now().year),
              selectedDate: DateTime(selectedYear),
              onChanged: (DateTime dateTime) {
                Navigator.pop(context, dateTime.year);
              },
            ),
          ),
        );
  }
}

class YearPickerButtonState extends StatefulWidget {
  int selectedYear;
  YearPickerButtonState({super.key, this.selectedYear = 1970});

  @override
  YearPickerButton createState() => YearPickerButton();
}


  class YearPickerButton extends State<YearPickerButtonState> {

    void pickYear(){
      
    }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 90,
            height: 50,
            child: OutlinedButton(
              style: outlinedButtonStyle,
              onPressed: (){
                setState(() async {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => YearPickerDialog(selectedYear: widget.selectedYear)
                    );

                  print(widget.selectedYear);
                  
                });
              },
              child: Text(widget.selectedYear.toString(), style: outlinedTextStyle)
            ),
          );
  }
}
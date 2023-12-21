import 'package:anime_client/themes/styles.dart';
import 'package:flutter/material.dart';

class DropdownState extends StatefulWidget {
  int dropdownValue;
  List<String> list; /*= <String>[//'По релевантности',
                                      'По популярности', 
                                      'От А До Я', 
                                      'От Я до А', 
                                      'Сначала новые', 
                                      'Сначала старые', 
                                      'Сначала высокая оценка', 
                                      'Сначала низкая оценка'];*/

  DropdownState({super.key, this.dropdownValue = 0, required this.list});

  @override
  State<DropdownState> createState() =>
      DropdownWidget();
}

class DropdownWidget extends State<DropdownState>{
  @override
  Widget build(BuildContext context) {
    return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [DropdownButton<String>(
                              value: widget.list[widget.dropdownValue],
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              style: subtitleTextStyle,
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  widget.dropdownValue = widget.list.indexWhere((filter) => filter == value!);
                                });
                              },
                              items: widget.list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )
                            ]);
  }
}
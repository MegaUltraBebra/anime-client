import 'package:anime_client/themes/styles.dart';
import 'package:anime_client/widgets/appbar.dart';
import 'package:anime_client/widgets/yearpicker.dart';
import 'package:flutter/material.dart';

class AnimesState extends StatefulWidget {
  const AnimesState({super.key});

  @override
  State<AnimesState> createState() =>
      AnimesPage();
}

class AnimesPage extends State<AnimesState> {
  static const String route = '/catalog';
  final TextEditingController _searchController = TextEditingController();
  //final DateTime _toDate = DateTime.now();
  final DateTime _toDate = DateTime.now();
  static const List<String> list = <String>['По релевантности',
                                            'От А До Я', 
                                            'От Я до А', 
                                            'По популярности', 
                                            'Сначала новые', 
                                            'Сначала старые', 
                                            'Сначала высокая оценка', 
                                            'Сначала низкая оценка'];
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(context: context),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03, right: MediaQuery.of(context).size.width*0.03, top: MediaQuery.of(context).size.height*0.1),
          alignment: Alignment.bottomCenter,
          child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SearchBar(
                        controller: _searchController,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 10.0)
                        ),
                        onSubmitted: (_) {
                          //_searchController.openView();
                        },
                        leading: const Icon(Icons.search),
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Сортировать по: ", style: uiTextStyle,),

                              const SizedBox(height: 10),

                              Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              style: subtitleTextStyle,
                              underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )
                            ])
                          ],
                        ),

                        const SizedBox(width: 50),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Дата выхода: ", style: uiTextStyle,),

                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 90,
                                  height: 50,
                                  child: OutlinedButton(
                                    style: outlinedButtonStyle,
                                    onPressed: () {
                                      yearPickerDialog(context);
                                    },
                                    child: Text('1970', style: outlinedTextStyle)
                                  ),
                                ),

                                const SizedBox(width: 30),

                                SizedBox(
                                  width: 90,
                                  height: 50,
                                  child: OutlinedButton(
                                    style: outlinedButtonStyle,
                                    onPressed: () {
                                      yearPickerDialog(context);
                                    },
                                    child: Text(_toDate.year.toString(), style: outlinedTextStyle)
                                  ),
                                )
                              ]
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),

                Expanded(child: 
                GridView(
                  padding: const EdgeInsets.all(12.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (MediaQuery.of(context).size.width / 300).round(),
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 15.0,
                    crossAxisSpacing: 15.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: List.generate(6, (index) {
            return Card(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 100, //we give the image a radius of 50
                    backgroundImage: NetworkImage(
                      'https://webstockreview.net/images/male-clipart-professional-man-3.jpg'),
                  ),
                  const SizedBox(height: 10),
                  Text("Anime name", style: titleTextStyle),
                  const SizedBox(height: 10),
                  Text("about", style:subtitleTextStyle),
                  Text("genre/year", style:microsubtitleTextStyle),
                  
                ]
              )
            );
          }),
        )
                )
                ]
              ),
          ),
        )
      );
  }
}
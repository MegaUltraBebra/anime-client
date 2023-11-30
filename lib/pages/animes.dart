import 'package:anime_client/themes/styles.dart';
import 'package:anime_client/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimesState extends StatefulWidget {
  const AnimesState({super.key});

  @override
  State<AnimesState> createState() =>
      AnimesPage();
}

class AnimesPage extends State<AnimesState> {
  static const String route = '/catalog';
  final TextEditingController _searchController = TextEditingController();
  static const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(context: context),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03, vertical: MediaQuery.of(context).size.height*0.1),
          child: Column(
                children: [
                  Column(
                  children: [
                    SearchBar(
                      controller: _searchController,
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0)
                      ),
                      onSubmitted: (_) {
                        //_searchController.openView();
                      },
                      leading: const Icon(Icons.search),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                               Text("Порядок: ", style: lableTextStyle,),
                               const SizedBox(height: 10),
                                DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
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
                            ],
                          )
                        ),

                        const SizedBox(width: 50),

                        Container(
                          child: Column(
                            children: [
                              Text("Дата выхода: ", style: lableTextStyle,),
                              const SizedBox(height: 10),
                              
                            ],
                          )
                        ),
                      ],
                    )
                  ],
                ),
                GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 2.0,
          children: List.generate(6, (index) {
            return Center(
              child: OutlinedButton(
                onPressed: (){},
                style: outlinedButtonStyle,
                child: Text(
                  'item no : $index',
                ),
              ),
            );
          }),
        )
                ]
              ),
          ),
        )
      );
  }
}
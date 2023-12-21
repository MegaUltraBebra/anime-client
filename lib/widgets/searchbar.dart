import 'package:anime_client/themes/styles.dart';
import 'package:flutter/material.dart';


class CustomSearchBar extends StatefulWidget {
  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(50, MediaQuery.of(context).size.height*0.1),
         child: Container(
          padding: const EdgeInsets.only(top:20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),   
            color: Colors.grey[300],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Material(
              color: Colors.grey[300],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.search,color: Colors.grey),
                  Expanded(
                    child: TextField(
                      // textAlign: TextAlign.center,
                      decoration: InputDecoration.collapsed(
                        hintText: ' Search by name or address',
                      ),
                      onChanged: (value) {

                      },
                    ),
                  ),
                  InkWell(
                    child: Icon(Icons.mic,color: Colors.grey,),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          )
        ) ,
      ),

    );
  }
}
/*class SearchBarState extends StatefulWidget {
  final TextEditingController _searchController = TextEditingController();

  SearchBarState({super.key});

  @override
  State<SearchBarState> createState() =>
      SearchBarWidget();
}

class SearchBarWidget extends State<SearchBarState>{
  @override
  Widget build(BuildContext context) {
    return SearchBar(
                        controller: widget._searchController,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 10.0)
                        ),
                        onSubmitted: (_) {
                          //_searchController.openView();
                        },
                        leading: const Icon(Icons.search),
                      );
  }
}*/
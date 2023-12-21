import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
      appBar: 
      PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
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

    ),
      );
  }
}

/* class CustomSearchBarDemo extends StatefulWidget {
  @override
  _CustomSearchBarDemoState createState() => _CustomSearchBarDemoState();
}

class _CustomSearchBarDemoState extends State<CustomSearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
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
} */
import 'package:flutter/material.dart';

class SearchMenu extends StatefulWidget {
  const SearchMenu({super.key});

  @override
  _SearchMenuState createState() => _SearchMenuState();
}

class _SearchMenuState extends State<SearchMenu> {
  final List<String> _searchHistory = [];

  void _onSearch(String query) {
    setState(() {
      _searchHistory.add(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _searchHistory.length,
              itemBuilder: (context, index) {
                final String query = _searchHistory[index];
                return ListTile(
                  title: Text('Search for $query'),
                  onTap: () {
                    // Handle search history tap
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

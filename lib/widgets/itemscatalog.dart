import 'package:anime_client/widgets/itemcard.dart';
import 'package:flutter/material.dart';
import 'package:anime_client/themes/styles.dart';

class ItemsCatalogState extends StatefulWidget {
  const ItemsCatalogState({super.key});

  @override
  ItemsCatalog createState() => ItemsCatalog();
}


  class ItemsCatalog extends State<ItemsCatalogState> {

    void updateFilters(){
      
    }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: 
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
            return const ItemCard();
                    }),
                  )
                );
  }
}
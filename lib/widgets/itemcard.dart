import 'package:anime_client/themes/styles.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget implements 
       PreferredSizeWidget{
          const CustomAppbar({Key? key, required this.context}) : super(key: key);

       final BuildContext context;
    
      @override
      Widget build(BuildContext context) {
        return AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: const Text('Title'),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        );
      }
    
      @override
      Size get preferredSize => Size(15, MediaQuery.of(context).size.height*0.05);
    }

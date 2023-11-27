import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomAppbar extends StatelessWidget implements 
       PreferredSizeWidget{
          const CustomAppbar({Key? key, required this.context}) : super(key: key);

       final BuildContext context;
    
      @override
      Widget build(BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03, vertical: 15),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AppBar(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0)
                  )
                ),
                title: const Text('Anime'),
                leading: IconButton(
                  onPressed: () {
                    context.go('/notifications'); 
                  },
                  icon: const Icon(Icons.notifications),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      context.go('/search');
                    },
                    icon: const Icon(Icons.search),
                  ),
                ],
              )
            ]
          )
        );
      }
    
      @override
      Size get preferredSize => Size(50, MediaQuery.of(context).size.height*0.1);
    }

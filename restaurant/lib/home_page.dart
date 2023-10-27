import 'package:flutter/material.dart';

import 'package:restaurant/list_item.dart';
import 'package:restaurant/makanan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override
  Widget build(BuildContext context){
    List<Makanan> listMenu = Makanan.dummyData;

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.list_alt,
                size: 30,
              ),
              Text(
                'List Kuliner',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: 10),
          Expanded(child: ListView.builder(
            itemCount: listMenu.length,
            itemBuilder: (context, index){
              return ListItem(menu: listMenu[index]);
            }))
        ],
      )
    );
  }
}


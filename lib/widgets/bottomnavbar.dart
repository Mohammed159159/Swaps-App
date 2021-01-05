import 'package:flutter/material.dart';
import 'package:swap_app/styles/colors.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey,),
            onPressed: (){},
            iconSize: 30,
          ),
          Container(
            decoration: decoration.copyWith(color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              icon: Icon(Icons.add_box_outlined, color: Colors.grey,),
              onPressed: (){},
            ),
          ),
          IconButton(icon: Icon(Icons.home_filled, color: Colors.grey),
              iconSize: 30,
              onPressed: null)
        ],
      ),
    );
  }
}

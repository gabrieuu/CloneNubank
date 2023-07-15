import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../colors.dart';

class NavbarBack extends StatelessWidget {
  const NavbarBack({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(     
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          GestureDetector(
            onTap: (){
              Navigator.pop(
                context, 
              );
            },
            child: Icon(Icons.chevron_left, color: greyT, size: 20,)
            ),
          Icon(MdiIcons.helpCircleOutline, color: greyT, size: 20,)
        ],
      ),
       );
  }
}
import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HeaderBack extends StatefulWidget {
  const HeaderBack({super.key});

  @override
  State<HeaderBack> createState() => _HeaderBackState();
}

class _HeaderBackState extends State<HeaderBack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
            child: Icon(Icons.chevron_left, color: greyT,)
            ),
          _options(),
        ],
      ),
    );
  }

  _options(){
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: Icon(MdiIcons.eyeOutline, color: greyT,)
          ),
        Icon(MdiIcons.helpCircleOutline, color: greyT,)
      ],
    );
  }
}
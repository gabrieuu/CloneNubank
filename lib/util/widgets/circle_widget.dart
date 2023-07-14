import 'package:flutter/material.dart';

import '../colors.dart';
class CircleWidget extends StatelessWidget {
    
    final String? title;
    final IconData icon;
    final bool? isFirst;
    final double? paddingValue;
    final double ? iconSize;

  const CircleWidget({ 
    Key? key,
    this.title, 
    required this.icon, 
    this.isFirst = false,
    this.paddingValue = 15,
    this.iconSize
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(

            padding: (isFirst ?? false) ? const EdgeInsets.only(right: 7, left: 20) : const EdgeInsets.symmetric(horizontal: 7),

            child: Column(
              children: [
                Container(

                  margin: const EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(paddingValue ?? 15), //padding por parametro

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: greyColor,
                  ),

                  child: Icon(icon,size: iconSize,),
                ),

              Text((title ?? ""), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),),

              ],
              ),
          );
  }
}
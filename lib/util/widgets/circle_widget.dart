import 'package:clone_nubank/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../colors.dart';
class CircleWidget extends StatelessWidget {
    
    final String? title;
    final double titleSize;
    final IconData icon;
    final bool? isFirst;
    final double? paddingValue;
    final double ? iconSize;
    final Widget? link;


  const CircleWidget({ 
    Key? key,
    this.title, 
    required this.icon, 
    this.isFirst = false,
    this.paddingValue = 15,
    this.iconSize,
    this.titleSize = 11,
    this.link,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(

            padding: (isFirst ?? false) ? const EdgeInsets.only(right: 7, left: 20) : const EdgeInsets.symmetric(horizontal: 7),

            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, 
                      PageTransition(
                        child: (link?? const HomePage()), 
                        type: PageTransitionType.bottomToTop,
                        
                      )
                      );
                  },
                  child: Container(
                
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(paddingValue ?? 15), //padding por parametro
                
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: greyColor,
                    ),
                
                    child: Icon(icon,size: iconSize,),
                  ),
                ),

              Text((title ?? ""), style: TextStyle(fontWeight: FontWeight.bold, fontSize: titleSize),),

              ],
              ),
          );
  }
}
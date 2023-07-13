import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left:15, right: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: greyColor,
        ),
      child: Row(
        children: [
          const Icon(Icons.credit_card_outlined,size: 18,),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text("Meus cartões",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
          )
        ]
        ),
    );
  }
}
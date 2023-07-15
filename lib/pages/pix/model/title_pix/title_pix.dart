import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';

class TitlePix extends StatelessWidget {
  const TitlePix({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 10, top: 5, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Área Pix", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          Text("Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso",style: TextStyle(color: greyT,fontSize: 13),)
        ],
      ),
    );
  }
}
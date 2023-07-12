import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';

class Caroussel extends StatelessWidget {
  const Caroussel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _menus("Área Pix",Icons.pix_outlined),
            _menus("Transferir",Icons.credit_card_off),
            _menus("Pagar",Icons.credit_card_off),
            _menus("Recarga de\ncelular",Icons.pix_outlined),
            _menus("Pedir emprestado",Icons.pix_outlined),
            _menus("Depositar",Icons.pix_outlined),
            
          ],
          ),
      )
    );
  }
}

_menus(String title, IconData icon){
  return Container(

            padding: const EdgeInsets.symmetric(horizontal: 7),

            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: greyColor
                  ),
                  child: Icon(icon,size: 20,),
                ),
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),)
              ]
              ),
          );
}
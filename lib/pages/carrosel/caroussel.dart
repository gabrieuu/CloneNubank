import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Caroussel extends StatelessWidget {
  const Caroussel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _menus(title: "Área Pix",icon:Icons.pix_outlined,isFirst:true),
            _menus(title: "Transferir",icon: Icons.credit_card_off),
            _menus(title: "Pagar",icon: Icons.credit_card_off),
            _menus(title: "Recarga de\ncelular",icon: Icons.pix_outlined),
            _menus(title: "Pedir\nemprestado",icon: Icons.pix_outlined),
            _menus(title: "Depositar",icon: Icons.pix_outlined),
            
          ],
          ),
      )
    );
  }
}

_menus({required String title, required IconData icon, bool? isFirst}){
  return Container(

            padding: (isFirst ?? false) ? const EdgeInsets.only(right: 7, left: 20) : const EdgeInsets.symmetric(horizontal: 7),

            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: greyColor
                  ),
                  child: Icon(icon,size: 20,),
                ),
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),)
              ]
              ),
          );
}
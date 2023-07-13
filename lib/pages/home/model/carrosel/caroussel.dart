import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Caroussel extends StatelessWidget {
  const Caroussel({Key? key}):super(key: key);

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
            _menus(title: "Pagar",icon: MdiIcons.barcode),
            _menus(title: "Transferir",icon: MdiIcons.bankTransferOut),
            _menus(title: "Depositar",icon: MdiIcons.bankTransferIn),
            _menus(title: "Recarga",icon: Icons.mobile_screen_share),
            _menus(title: "Emprestado",icon: Icons.attach_money),
            
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
                    color: greyColor,
                  ),

                  child: Icon(icon,size: 20,),
                ),

              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),),

              ],
              ),
          );
}
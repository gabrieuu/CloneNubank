import 'package:clone_nubank/util/widgets/circle_widget.dart';
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
            const CircleWidget(title: "Área Pix",icon:Icons.pix_outlined,isFirst:true),
            CircleWidget(title: "Pagar",icon: MdiIcons.barcode),
            CircleWidget(title: "Transferir",icon: MdiIcons.bankTransferOut),
            CircleWidget(title: "Depositar",icon: MdiIcons.bankTransferIn),
            const CircleWidget(title: "Recarga",icon: Icons.mobile_screen_share),
            const CircleWidget(title: "Emprestado",icon: Icons.attach_money),
            
          ],
          ),
      )
    );
  }
}


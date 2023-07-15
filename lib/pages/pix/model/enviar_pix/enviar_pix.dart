import 'package:clone_nubank/pages/transfer/transfer_page.dart';
import 'package:clone_nubank/util/widgets/circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EnviarPix extends StatelessWidget {
  const EnviarPix({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15,bottom: 15),
          child: const Text("Enviar", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              
              children: [
                CircleWidget(icon: MdiIcons.bankTransferOut, title: "Transferir", paddingValue: 10, iconSize: 23, titleSize: 11, link: const TransferPage(),),
                CircleWidget(icon: MdiIcons.contentCopy, title: "Pix Copia e Cola", iconSize: 20, paddingValue: 11, titleSize: 11,),
                CircleWidget(icon: MdiIcons.qrcodeScan, title: "Ler QR Code", iconSize: 20, paddingValue: 10, titleSize: 11,)
              ],
            ),
          ],
        )
      ],
    );
  }
}
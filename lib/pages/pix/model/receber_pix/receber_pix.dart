import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../util/widgets/circle_widget.dart';

class ReceberPix extends StatelessWidget {
  const ReceberPix({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15,bottom: 15,top: 10),
          child: const Text("Receber", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
          ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              const CircleWidget(icon: Icons.attach_money_outlined, title: "Cobrar", paddingValue: 10, iconSize: 23, titleSize: 11,),
              CircleWidget(icon: MdiIcons.bankTransferIn, title: "Depositar", iconSize: 20, paddingValue: 11, titleSize: 11, link: const ReceberPix(),),
            ],
          ),
        )
      ],
    );
  }
}
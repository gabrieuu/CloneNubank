import 'package:clone_nubank/pages/pay/pay_page.dart';
import 'package:clone_nubank/pages/pix/pix_page.dart';
import 'package:clone_nubank/pages/received/receive_page.dart';
import 'package:clone_nubank/pages/recharge/recharge_page.dart';
import 'package:clone_nubank/pages/to_loan/loan_page.dart';
import 'package:clone_nubank/pages/transfer/transfer_page.dart';
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
            const CircleWidget(title: "Área Pix",icon:Icons.pix_outlined,isFirst:true, link: PixPage(),),
            CircleWidget(title: "Transferir",icon: MdiIcons.bankTransferOut, link: const TransferPage()),
            CircleWidget(title: "Pagar",icon: MdiIcons.barcode, link: const PayPage()),
            CircleWidget(title: "Depositar",icon: MdiIcons.bankTransferIn, link: const ReceivedPage()),
            const CircleWidget(title: "Recarga",icon: Icons.mobile_screen_share, link: RechargePage(),),
            const CircleWidget(title: "Emprestado",icon: Icons.attach_money , link: LoanPage(),),
            
          ],
          ),
      )
    );
  }
}


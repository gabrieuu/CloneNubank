import 'package:clone_nubank/controller/controller_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/colors.dart';

class ContentTransfer extends StatefulWidget {
  const ContentTransfer({super.key});

  @override
  State<ContentTransfer> createState() => _ContentTransferState();
}

class _ContentTransferState extends State<ContentTransfer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Qual é o valor da transferência?",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          _labelText(),

        ],
      ),
    );
  }

  _labelText(){
    return GetBuilder(
            init: UsersController(),
            builder:(controller){
              return RichText(
                text: TextSpan(
                   children: [
                      TextSpan(text:"Saldo disponível em conta ", 
                      style: TextStyle(color: greyT, fontSize: 12)),

                      TextSpan(text:controller.formatCurrency(controller.getSaldo()), 
                      style: TextStyle(color: greyT, fontSize: 12, fontWeight: FontWeight.bold)),
                   ]
                  ),

                );
            },
            );
  }
}
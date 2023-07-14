import 'package:clone_nubank/controller/controller_user.dart';
import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}):super(key : key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      alignment: Alignment.centerLeft,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          _iconCreditCard(),
          _linkCreditCard(),
          Text("Fatura atual", style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: greyT),),
          _faturaAtual(),
          _limiteDisponivelLabel(),

        ],
      ),
    );
  }

  _iconCreditCard(){
    return Container(
            margin: const EdgeInsets.only(bottom: 1),
            child: Icon(MdiIcons.creditCardOutline,size: 17,)
            );
  }
  _linkCreditCard(){
    return Container(
            margin: const EdgeInsets.only(bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Cartão de crédito", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Icon(MdiIcons.chevronRight)
              ],
            ),
    );
  }
  _faturaAtual(){
    return GetBuilder<UsersController>(
      init: UsersController(),
      builder: (controller){
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          child: Text(controller.formatCurrency(controller.getFatura()), style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
          );
      }
      );
  }
  _limiteDisponivelLabel(){
    return GetBuilder<UsersController>(
      init: UsersController(),
      builder: (controller){
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Text("Limite disponível: ${controller.formatCurrency(controller.getLimiteDisponivel())}",style: TextStyle(color: greyT, fontSize: 11, fontWeight: FontWeight.bold),),
        );
      },
      );
  }
}
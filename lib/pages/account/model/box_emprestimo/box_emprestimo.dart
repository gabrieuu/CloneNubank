import 'package:clone_nubank/controller/controller_user.dart';
import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BoxEmprestimo extends StatefulWidget {
  const BoxEmprestimo({super.key});

  @override
  State<BoxEmprestimo> createState() => _BoxEmprestimoState();
}

class _BoxEmprestimoState extends State<BoxEmprestimo> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30,top: 5),

      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(10)
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _left(),
          Icon(Icons.chevron_right, color: greyT,)
        ],
        )
    );
  }
  _left(){

    return Row(
      children: [
        Container(

          margin: const EdgeInsets.only(right: 5),
          child: const Icon(Icons.monetization_on_outlined)),

        GetBuilder(
          
          init: UsersController(),
          
          builder: (controller){
            return RichText(
              
              text: TextSpan(
                children: [
                  TextSpan(text: controller.formatCurrency(controller.getEmprestimo()), style: const TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold)),
                  const TextSpan(text:" disponível\npara empréstimo",style: TextStyle(color: Colors.black, fontSize: 11)),
                ]
              )
              );

          }
          ),
      ],
      );
  }
}
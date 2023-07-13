import 'package:clone_nubank/controller/controller_home_page.dart';
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
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          _left(),
          Icon(Icons.chevron_right, color: greyT,)
        ],
        )
    );
  }
  _left(){
    return Container(
      child: Row(
        children: [
          Icon(Icons.monetization_on_outlined),
          GetBuilder(
            init: ControllerHomePage(),
            builder: (controller){
              return Text("${controller.formatCurrency(controller.getEmprestimo())} disponível\npara empréstimo.",);
            }
            ),
        ],
        )
    );
  }
}
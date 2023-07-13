import 'package:clone_nubank/controller/controller_home_page.dart';
import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SaldoAccount extends StatefulWidget {
  const SaldoAccount({super.key});

  @override
  State<SaldoAccount> createState() => _SaldoAccountState();
}

class _SaldoAccountState extends State<SaldoAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Saldo disponível", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold, color: greyT),),
          GetBuilder(
            init: ControllerHomePage(),
            builder: (controller) {
              return Text(controller.formatCurrency(controller.getSaldo()),style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
            }
          )
        ],
      ),
    );
  }
}
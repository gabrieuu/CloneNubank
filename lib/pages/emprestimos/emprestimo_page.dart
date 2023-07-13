import 'package:clone_nubank/controller/controller_home_page.dart';
import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


class EmprestimoPage extends StatefulWidget {
  const EmprestimoPage({super.key});

  @override
  State<EmprestimoPage> createState() => _EmprestimoPageState();
}

class _EmprestimoPageState extends State<EmprestimoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _iconEmprestimo(),
          _linkEmprestimo(),
          Text("Valor disponível de até",style: TextStyle(fontSize: 11, color: greyT,fontWeight: FontWeight.bold),),
          _valueEmprestimo()
        ],
      ),
    );
  }

  _iconEmprestimo(){
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      alignment: Alignment.centerLeft,
      child: const Icon(Icons.monetization_on_outlined, size: 18,),
    );
  }

  _linkEmprestimo(){
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Empréstimo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }

  _valueEmprestimo(){
    return Container(
      margin: const EdgeInsets.only(top:5),
      child: GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder:(controller){
          return Text(controller.formatCurrency(controller.getEmprestimo()),style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),);
        }
        ),
    );
  }

}
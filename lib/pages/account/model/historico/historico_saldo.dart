import 'package:clone_nubank/controller/controller_user.dart';
import 'package:clone_nubank/util/colors.dart';
import 'package:clone_nubank/util/widgets/circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HistoricoSaldo extends StatefulWidget {
  const HistoricoSaldo({super.key});

  @override
  State<HistoricoSaldo> createState() => _HistoricoSaldoState();
}

class _HistoricoSaldoState extends State<HistoricoSaldo> {

  bool searchClicked = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Histórico",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          _search(),
          _historico(),
          _divider(),
          _historico(),
          _divider(),
          _historico(),
          _divider(),
          _historico(),
          _divider(),
        ],
      ),
    );
  }
  _search(){
    return Container(
      width: MediaQuery.of(context).size.width,     
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(40)
      ),
      
      child: TextField(
        onTap: (){
          setState(() {
            searchClicked = true;
          });
        },
        decoration: InputDecoration(
          hintText: "Buscar",
          prefixIcon: searchClicked ? const Icon(Icons.chevron_left,size: 20,) : const Icon(Icons.search,size: 20,),
          border: InputBorder.none,
          hintStyle: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
 
  _historico(){
    return Row(
      children: [
        const CircleWidget(icon:Icons.payments_outlined, iconSize: 20, paddingValue: 10,),
        _movimentation(),
      ],
    );
  }
}

_movimentation(){
  return GetBuilder(
    init: UsersController(),
    builder: (controller) {
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.vertical,
        children: [
           LayoutBuilder(
            builder: (context, constraints) {
              return const Wrap(
                direction: Axis.vertical,
                children: [
                  Text("Transferência enviada", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
                  Text("14 JUL 2023", style: TextStyle(fontSize: 11),),
                ],
                
              );
            }
          ),
          Text(controller.getName()),
          const Text("R\$ 200,00"),
          const Text("Pix")
        ],
      );
    }
  );
  
}
_divider(){
    return Divider(
      color: greyColor,
      thickness: 2,
    );
  }
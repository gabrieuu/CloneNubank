import 'package:clone_nubank/controller/controller_home_page.dart';
import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DinheiroGuardado extends StatefulWidget {
  const DinheiroGuardado({super.key});

  @override
  State<DinheiroGuardado> createState() => _DinheiroGuardadoState();
}

class _DinheiroGuardadoState extends State<DinheiroGuardado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _leftRow(),
          Icon(MdiIcons.chevronRight, color: greyT,),
        ],
        ),
    );
  }
  _leftRow(){
    return Row(
            children: [
              Icon(MdiIcons.piggyBankOutline),
             _guardado(),
            ],
          );
  }
  _guardado(){
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dinheiro guardado", style: TextStyle(fontSize: 11, color: greyT, fontWeight: FontWeight.bold),),
                  GetBuilder<ControllerHomePage>(
                    init: ControllerHomePage(),
                    builder: (controller){
                      return Container(
                        child: Text(controller.formatCurrency(controller.getDinheiroGuardado()), style: TextStyle(fontWeight: FontWeight.bold),),
                      );
                    }
                    ),
                ],
              ),
    );
  }
}
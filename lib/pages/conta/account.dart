import 'package:clone_nubank/controller/controller_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:20, right: 20,top:15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
           _accountChevron(),
           SizedBox(height: 5,),
          _saldo(),
        ]
        ),
    );
  }

  _accountChevron(){
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [             
              Text("Conta", style: TextStyle(fontWeight: FontWeight.bold),),
              Icon(MdiIcons.chevronRight,),  
            ],
          );
  }
  _saldo(){
    return GetBuilder<ControllerHomePage>(           
            init: ControllerHomePage(),
            builder: (controllerHomePage){           
              return Text(formatCurrency(controllerHomePage.saldo),style: TextStyle(fontWeight: FontWeight.bold),);
            },
          );
  }


  String formatCurrency(double value) { // formata o saldo para modelo brasileiro
    
    String stringValue = value.toStringAsFixed(2); // Converte para uma string com duas casas decimais
    List<String> parts = stringValue.split('.'); // Divide a string em duas partes: inteira e decimal
    String integerPart = parts[0];
    String decimalPart = parts[1];

  String formattedValue = 'R\$ ';

  // Formata a parte inteira, adicionando pontos a cada três dígitos
  for (int i = 0; i < integerPart.length; i++) {
    if (i != 0 && (integerPart.length - i) % 3 == 0) {
      formattedValue += '.';
    }
    formattedValue += integerPart[i];
  }

  formattedValue += ',' + decimalPart; // Adiciona a parte decimal

  return formattedValue;
}
}
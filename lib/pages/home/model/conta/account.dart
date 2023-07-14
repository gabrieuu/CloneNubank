import 'package:clone_nubank/controller/controller_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Account extends StatefulWidget {
  const Account({Key? key}):super(key:key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/account");
      },

      child: InkWell(
        child: Container(
          margin: const EdgeInsets.only(left:20, right: 20,top:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
               _accountChevron(),
               const SizedBox(height: 5,),
              _saldo(),
            ]
            ),
        ),
      ),
    );
  }

  _accountChevron(){
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [             
              const Text("Conta", style: TextStyle(fontWeight: FontWeight.bold),),
              Icon(MdiIcons.chevronRight,),  
            ],
          );
  }
  _saldo(){
    return GetBuilder<UsersController>(           
            init: UsersController(),
            builder: (controllerHomePage){           
              return Text(controllerHomePage.formatCurrency(controllerHomePage.getSaldo()),style: const TextStyle(fontWeight: FontWeight.bold),);
            },
          );
  }


  
}
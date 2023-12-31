import 'package:clone_nubank/controller/controller_user.dart';
import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatefulWidget{
  const Header({Key? key}):super(key : key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header>{
  @override
  Widget build(BuildContext context){
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _option()
            ],
          ),
           _welcome(),           
        ]
        ),
    );
  }

  _profile(){
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 10, top: 5,bottom: 5),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: secundaryPurple,
          ),        

        child: IconButton(
          onPressed: (){},
          icon: Icon(MdiIcons.accountOutline, color: Colors.white, size: 17),
          ),
      ),
    );
  }
  
  _option(){
    return Row(
      children: [

        GetBuilder<UsersController>(
          init: UsersController(),
          builder: (controllerHomePage) {
            return IconButton(
              onPressed: () => controllerHomePage.mostrarValor(), 
              icon: Icon(
                controllerHomePage.getEye() ? MdiIcons.eyeOutline : MdiIcons.eyeOffOutline, color: Colors.white, size: 20,)
            );
          }
        ),
        IconButton(
          onPressed: (){}, 
          icon: Icon(MdiIcons.helpCircleOutline, color: Colors.white, size: 20,)
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.person_add_alt_1_outlined, color: Colors.white, size: 20,),
        )
      ],
    );
  }

  _welcome(){
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 20, top: 20),
      child: const Text("Olá, Gabriel", style: TextStyle(color: Colors.white, fontSize: 15),),
    );
  }
}
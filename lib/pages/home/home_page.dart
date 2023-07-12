import 'package:clone_nubank/pages/carrosel/caroussel.dart';
import 'package:clone_nubank/pages/cartoes/my_card.dart';
import 'package:clone_nubank/pages/conta/account.dart';
import 'package:clone_nubank/pages/home/model/header.dart';
//import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home_page extends StatefulWidget{
  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: _body()
    );
  }

  PreferredSize _appBar(){
    return PreferredSize(
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text("Nubank"),
      ), 
      preferredSize: const Size.fromHeight(0),
      );
  }

  Widget _body(){
    return SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Header(),
              Account(),
              Caroussel(),
              MyCards(),
            ],),
        ),
        );
  }

}
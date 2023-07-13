
import 'package:clone_nubank/pages/home/model/carrosel/caroussel.dart';
import 'package:clone_nubank/pages/home/model/cartao_credito/credit_card.dart';
import 'package:clone_nubank/pages/home/model/cartoes/my_card.dart';
import 'package:clone_nubank/pages/home/model/conta/account.dart';
import 'package:clone_nubank/pages/home/model/emprestimos/emprestimo_page.dart';
import 'package:clone_nubank/pages/home/model/header/header.dart';
import 'package:clone_nubank/pages/home/model/investimentos/investimeto_page.dart';
import 'package:clone_nubank/pages/home/model/notification/notification.dart';
import 'package:clone_nubank/util/colors.dart';
//import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}):super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
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
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text("Nubank"),
      ),
      );
  }

  Widget _body(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const Account(),
            const Caroussel(),
            const MyCards(),
            const NotificationPage(),
            _divider(),
            const CreditCard(),
            _divider(),
            const EmprestimoPage(),
            _divider(),
            const InvestimentosPage(),
            _divider(),
          ],),
        );
  }
_divider(){
  return Divider(
              color: greyColor,
              thickness: 2,
            );
}
}
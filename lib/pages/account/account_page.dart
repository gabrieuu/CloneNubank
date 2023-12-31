import 'package:clone_nubank/pages/account/model/box_emprestimo/box_emprestimo.dart';
import 'package:clone_nubank/pages/account/model/historico/historico_saldo.dart';
import 'package:clone_nubank/pages/account/model/saldo/saldo_section.dart';
import 'package:clone_nubank/pages/home/model/carrosel/caroussel.dart';
import 'package:clone_nubank/util/colors.dart';
import 'package:clone_nubank/util/widgets/nav_bar_back.dart';
import 'package:flutter/material.dart';

import 'model/dinheiro_guardado/dinheiro_guardado.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar(){
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
      )
      );
  }

  _body(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NavbarBack(),
          const SaldoAccount(),
          const DinheiroGuardado(),
          const Caroussel(),
          _divider(),
          const BoxEmprestimo(),
          const HistoricoSaldo(),
        ],
      ),
    );
  }

  _divider(){
    return Divider(
      color: greyColor,
      thickness: 2,
    );
  }
}
import 'package:clone_nubank/pages/pix/model/enviar_pix/enviar_pix.dart';
import 'package:clone_nubank/pages/pix/model/receber_pix/receber_pix.dart';
import 'package:clone_nubank/pages/pix/model/title_pix/title_pix.dart';
import 'package:clone_nubank/util/widgets/nav_bar_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../util/colors.dart';

class PixPage extends StatelessWidget {
  const PixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  PreferredSize _appBar(){
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text("Area Pix"),
      ),
      );
  }

  Widget _body(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NavbarBack(),
        TitlePix(),
        EnviarPix(),
        ReceberPix(),
      ],);
  }
  _divider(){
  return Divider(
              color: greyColor,
              thickness: 2,
            );
}
}
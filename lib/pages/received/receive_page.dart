import 'package:clone_nubank/util/widgets/nav_bar_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../util/colors.dart';

class ReceivedPage extends StatelessWidget {
  const ReceivedPage({super.key});

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
        title: const Text("Depositar"),
      ),
      );
  }

  Widget _body(){
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavbarBack()
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
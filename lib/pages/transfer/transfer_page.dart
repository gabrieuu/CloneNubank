import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../util/widgets/nav_bar_back.dart';
import 'model/content.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        mini: true,
        child: const Icon(Icons.arrow_forward_outlined, size: 20,),
        ),
    );
  }

  PreferredSize _appBar(){
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text("Transferir"),
      ),
      );
  }

  Widget _body(){
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavbarBack(),
            ContentTransfer(),
          ],),
        );
  }
}
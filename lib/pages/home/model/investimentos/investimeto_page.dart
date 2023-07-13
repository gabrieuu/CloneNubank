import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';

class InvestimentosPage extends StatelessWidget {
  const InvestimentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _linkInvestimentos(),
          Text("O jeito Nu de investir sem asteriscos,\nlinguagem fácil a partir de R\$1. Saiba mais.",style: TextStyle(color: greyT, fontSize: 11),),
          _btnConsulta(),
        ],
        )
    );
  }

  _linkInvestimentos(){
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Investimentos", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }

  _btnConsulta(){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(10),
        
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const Icon(Icons.payments_outlined,size: 15,),
          ),
          const Text("Consultar saldo para transferência", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
import 'dart:ui';

import 'package:clone_nubank/pages/account/account_page.dart';
import 'package:clone_nubank/pages/home/home_page.dart';
import 'package:clone_nubank/pages/pay/pay_page.dart';
import 'package:clone_nubank/pages/pix/pix_page.dart';
import 'package:clone_nubank/pages/received/receive_page.dart';
import 'package:clone_nubank/pages/recharge/recharge_page.dart';
import 'package:clone_nubank/pages/to_loan/loan_page.dart';
import 'package:clone_nubank/pages/transfer/transfer_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes:{
        "/" : (context) => const HomePage(),
        "/account" : (context) => const AccountPage(),
        "/pix" : (context) => const PixPage(),
        "/pay" : (context) => const PayPage(),
        "/transfer" : (context) => const TransferPage(),
        "/received" : (context) => const ReceivedPage(),
        "/recharge" : (context) => const RechargePage(),
        "/loan" : (context) => const LoanPage(),
      } ,
    );
  }
}

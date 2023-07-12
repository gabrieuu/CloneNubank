import 'package:get/get.dart';
class ControllerHomePage extends GetxController{
  
  double saldo = 1000.00;
  bool eye = true;


  void mostrarValor(){
    eye = !eye;
    update();
  }
  
}
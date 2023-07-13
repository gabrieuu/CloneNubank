import 'package:get/get.dart';
class ControllerHomePage extends GetxController{
  
  double saldo = 1000.00;
  double fatura = 680.40;
  double limite = 1000.00;
  bool eye = true;


  void mostrarValor(){
    eye = !eye;
    update();
  }

  double getLimiteDisponivel(){
    return limite-fatura;
  }
  
  String formatCurrency(double value) { // formata o saldo para modelo brasileiro
    
    String stringValue = value.toStringAsFixed(2); // Converte para uma string com duas casas decimais
    List<String> parts = stringValue.split('.'); // Divide a string em duas partes: inteira e decimal
    String integerPart = parts[0];
    String decimalPart = parts[1];

  String formattedValue = 'R\$ ';

  // Formata a parte inteira, adicionando pontos a cada três dígitos
  for (int i = 0; i < integerPart.length; i++) {
    if (i != 0 && (integerPart.length - i) % 3 == 0) {
      formattedValue += '.';
    }
    formattedValue += integerPart[i];
  }

  formattedValue += ",$decimalPart"; // Adiciona a parte decimal

  return formattedValue;
}
}
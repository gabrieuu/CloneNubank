import 'package:get/get.dart';
class ControllerHomePage extends GetxController{
  
  double _saldo = 1000.00;
  double _fatura = 680.40;
  double _limite = 1000.00;
  double _emprestimo = 10000;
  double _dinheiroGuardado = 0;
  bool _eye = true;


  void mostrarValor(){
    _eye = !_eye;
    update();
  }
  double getDinheiroGuardado(){
    return _dinheiroGuardado;
  }
  double getLimiteDisponivel(){
    return _limite-_fatura;
  }
  double getEmprestimo(){
    return _emprestimo;
  }
  double getSaldo(){
    return _saldo;
  }
  double getFatura(){
    return _fatura;
  }
  double getLimite(){
    return _limite;
  }
  bool getEye(){
    return _eye;
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
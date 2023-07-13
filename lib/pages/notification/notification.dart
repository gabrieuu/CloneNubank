import 'package:clone_nubank/util/colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(top: 20,bottom: 5),
          child: Row( 
            children: [
              _box(span: "Pedacinho",text1: "E você, o que vai fazer com seu ", text2: "? Decida agora!"),
              _box(span: "Convide seus amigos para o NuBank", text2: " e desbloqueie brasões incríveis.")
            ],
          ),
        ),
    );
    
  }

  Widget _box({required String span, String? text1, String? text2}){
    return Container(
             
              width: 180,
              height: 60,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(left: 15),
              
              decoration: BoxDecoration(              
                color: greyColor,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(
                child: RichText(
                  text:  TextSpan(
                    children: [

                      TextSpan(text:text1, 
                      style: const TextStyle(color: Colors.black, fontSize: 10)),

                      TextSpan(text: span, 
                      style: TextStyle(color: backgroundColor, fontSize: 10)),

                      TextSpan(text: text2, 
                      style: const TextStyle(color: Colors.black, fontSize: 10)),

                    ]
                  ),
                )
              ),
              
            );
  }

}
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:readmore/readmore.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent
  ));
  runApp( HomeView());
}
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/mashkoor.jpg"),
          ),
          title: Text("my app",style: TextStyle(fontSize: 18,fontFamily: "Pacifico"),),
      ),
      body:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            PinCodeTextField(
                appContext: context,
                length: 6,
                keyboardType: TextInputType.number,
              cursorColor: Colors.teal,
              obscureText: true,
              enabled: true,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldWidth: 40,
                fieldHeight: 50,
                activeColor: Colors.grey,
                inactiveFillColor: Colors.grey,
                selectedColor: Colors.pink,
                inactiveColor: Colors.grey,
                selectedFillColor: Colors.purple.shade500,
                activeFillColor: Colors.red,
              ),
              onChanged: (value){

              },
            ),


            ],
          ),
    );
  }
}

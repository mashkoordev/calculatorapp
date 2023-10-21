
import 'package:flutter/material.dart';
import 'package:studioproject2/constant.dart';
import 'package:studioproject2/my_button.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {

  runApp( HomeView());
}
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var userInput="";
  var answer="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,
      appBar:
        AppBar(
backgroundColor: Colors.white,
          title:
          Text("Calculator",style: TextStyle(fontSize: 24,color: Colors.pink,fontFamily: "Pacifico"),),

      ),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
           Expanded(
             child: Padding(
               padding: const EdgeInsets.symmetric(vertical: 20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Align(
                     alignment: Alignment.bottomRight,
                     child:  Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white)),
                   ),
                  SizedBox(height: 15,),
                  Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white) ,),
                 ],
               ),
             ),
           ),
         Expanded(
          flex: 2,
           child: Column(
             children: [
               Row(
                 children: [
                   MyButton(title: "A/C", onpress: (){
                     userInput=userInput.substring(0,userInput.length-1);
                     setState(() {

                     }
                 );
                     print("tap");}),
                   MyButton(title: "+/-",onpress: (){
                     userInput +='+/-';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "%",onpress: (){
                     userInput +='%';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "/",color: Color(0xffffa00a),onpress: (){
                     userInput +='/';
                     setState(() {

                     });
                     print("tap");}),
                 ],
               ),
               Row(
                 children: [
                   MyButton(title: "7", onpress: (){
                     userInput +='7';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "8",onpress: (){
                     userInput +='8';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "0",onpress: (){
                     userInput +='0';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "X",color: Color(0xffffa00a),onpress: (){
                    userInput +="x";
                     setState(() {

                     });
                     print("tap");}),
                 ],
               ),
               Row(
                 children: [
                   MyButton(title: "4", onpress: (){
                     userInput +='4';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "5",onpress: (){
                     userInput +='5';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "6",onpress: (){
                     userInput +='6';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "-",color: Color(0xffffa00a),onpress: (){
                     userInput +='-';
                     setState(() {

                     });
                     print("tap");}),
                 ],
               ),
               Row(
                 children: [
                   MyButton(title: "1", onpress: (){
                     userInput +='1';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "2",onpress: (){
                     userInput +='2';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "3",onpress: (){
                     userInput +='3';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "+",color: Color(0xffffa00a),onpress: (){
                     userInput +='+';
                     setState(() {

                     });
                     print("tap");}),
                 ],
               ),
               Row(
                 children: [
                   MyButton(title: "0", onpress: (){
                     userInput +='0';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: ".",onpress: (){
                     userInput +='.';
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "del",onpress: (){
                    userInput=userInput.substring(0,userInput.length-1);
                     setState(() {

                     });
                     print("tap");}),
                   MyButton(title: "=",color: Color(0xffffa00a),onpress: (){
                    equalPress();
                     setState(() {

                     });
                     print("tap");}),
                 ],
               ),
             ],
           ),
         ),
          ],
        ),
      ),
    ),
    );
  }
  void equalPress(){
    String finalUsreInput=userInput.replaceAll('x', '*');
    Parser p=Parser();
    Expression expression=p.parse(finalUsreInput);
    ContextModel contextModel=ContextModel();

    double eva=expression.evaluate(EvaluationType.REAL, ContextModel());
    answer=eva.toString();
  }
}






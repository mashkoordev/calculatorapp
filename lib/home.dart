
import 'package:flutter/material.dart';
import 'package:studioproject2/constant.dart';


void main() {

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
          title:
          Text("Calculator",style: TextStyle(fontSize: 24,fontFamily: "Pacifico"),),

      ),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
           MyButton(
          title: "log in",),
            MyButton(
              title: "sign up",),
          ],
        ),
      ),
    ),
    );
  }
}



class MyButton extends StatelessWidget {
  final String title;
  const MyButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Text(title,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}


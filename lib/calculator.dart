import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  numberButton(String btnText, Color btnColor, Color txtColor){
    return ElevatedButton(
      onPressed: ()=>{calculate(btnText)},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(70, 70),
        shape: const CircleBorder()
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25,color: txtColor,),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.black,
  appBar: AppBar(
     title:  Text("Calculator"),
    backgroundColor: Colors.orange,
  ),
  body: Padding(
    padding:  EdgeInsets.symmetric(horizontal: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(padding: EdgeInsets.all(10.0),
            child: Text(text,textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white,fontSize: 80),
            ),
            ),
          ],
        ),
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           numberButton("C", Colors.grey, Colors.black),
           numberButton("+/-", Colors.grey, Colors.black),
           numberButton("%", Colors.grey, Colors.black),
           numberButton("/", Colors.orange, Colors.black),
         ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            numberButton("7", Colors.grey, Colors.black),
            numberButton("8", Colors.grey, Colors.black),
            numberButton("9", Colors.grey, Colors.black),
            numberButton("x", Colors.orange, Colors.black),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            numberButton("4", Colors.grey, Colors.black),
            numberButton("5", Colors.grey, Colors.black),
            numberButton("6", Colors.grey, Colors.black),
            numberButton("-", Colors.orange, Colors.black),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            numberButton("1", Colors.grey, Colors.black),
            numberButton("2", Colors.grey, Colors.black),
            numberButton("3", Colors.grey, Colors.black),
            numberButton("+", Colors.orange, Colors.black),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                shape:  StadiumBorder(),
                backgroundColor: (Colors.grey[850])!,
              ), child:  Padding(padding: EdgeInsets.fromLTRB(28, 12, 102, 12),
            child: Text("0",
              style: TextStyle(fontSize: 35,color: Colors.white),
            ),
            ),
            ),
            numberButton(".", (Colors.grey[850])!, Colors.white),
            numberButton("=", (Colors.grey[850])!, Colors.white)

          ],
        ),
        const SizedBox(height: 10),
      ],

    ),
  ),
);
  }
  //logic
  int firstNumber=0;
  int secondNumber=0;
  String result="";
  String text="";
  String operation="";

  void calculate(String btnText){
    if(btnText=="C"){
      result="";
      text="";
      firstNumber=0;
      secondNumber=0;
    }else if(btnText=="+"||
        btnText=="-"||
        btnText=="x"||
        btnText=="/")
    {
      firstNumber=int.parse(text);
      result="";
      operation=btnText;
    }else if(btnText=="="){
      secondNumber=int.parse(text);
      if(operation=="+"){
        result=(firstNumber+secondNumber).toString();
      }
      if(operation=="-"){
        result=(firstNumber-secondNumber).toString();
      }
      if(operation=="x"){
        result=(firstNumber*secondNumber).toString();
      }
      if(operation=="/"){
        result=(firstNumber~/secondNumber).toString();

      }
    }else{
      result=int.parse(text+btnText).toString();
    }
    setState(() {
       text=result;
    });
  }
}

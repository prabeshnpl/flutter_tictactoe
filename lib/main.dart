import 'package:flutter/material.dart';
void main()
{
  runApp(Tictactoe());
}
class Tictactoe extends StatefulWidget {
  const Tictactoe({super.key});

  @override
  State<Tictactoe> createState() => _TictactoeState();
}

class _TictactoeState extends State<Tictactoe> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int score1=0,score2=0;
  var one_1="",one_2="",one_3="",two_1="",two_2="",two_3="",three_1="",three_2="",three_3="";
  var tictactoe="X",winner="";
  void reset()
  {
    setState(() {
       score1=score2=0;
    });
   
  }
  void clear()
  {
    setState(() {
      one_1=one_2=one_3=two_1=two_2=two_3=three_1=three_2=three_3=winner="";  
      tictactoe='X'; 
    });
  }
  void fill()
  {
    setState(() {
      one_1=one_2=one_3=two_1=two_2=two_3=three_1=three_2=three_3=tictactoe;     
    });
  }
  void check_tictactoe()
  {
      if((one_1==two_2 && two_2 ==three_3 && one_1!="") || ( one_1==two_1 && two_1 ==three_1 && one_1!="") || (one_2==two_2 && two_2 ==three_2 && one_2!="") || (one_3==two_3 && two_3 ==three_3 && one_3!="")||(one_1==one_2 && one_2 ==one_3 && one_1!="")||(two_1==two_2 && two_2 ==two_3 && two_1!="")||(three_1==three_2 && three_2 ==three_3 && three_1!="")||(one_3==two_2 && two_2 ==three_1 && one_3!=""))
      {
        winner="'$tictactoe' WINS";
        fill();
        if(tictactoe=='X')
        {
          score1++;
        }
        else{
          score2++;
        }
      }
  }
  oneone(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      one_1=tictactoe; 
      check_tictactoe();
    });
  }
  onetwo(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      one_2=tictactoe; 
      check_tictactoe();
    });
  }
  onethree(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      one_3=tictactoe;
      check_tictactoe();
    });
  }
  twoone(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      two_1=tictactoe;
      check_tictactoe();
    });
  }
  twotwo(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      two_2=tictactoe;
      check_tictactoe();
    });
  }
  twothree(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      two_3=tictactoe;
      check_tictactoe();
    });
  }
  threeone(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      three_1=tictactoe;
      check_tictactoe();
    });
  }
  threetwo(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      three_2=tictactoe;
      check_tictactoe();
    });
  }
  threethree(){
    setState(() {
      if(tictactoe=='X')
      {tictactoe='O';}
      else{tictactoe='X';}
      three_3=tictactoe;
      check_tictactoe();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TicTacToe",style: TextStyle(fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor:Colors.blueGrey,
body:
  Column(
    
    children: [
     const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Player X",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 18, 22, 242),) ),
          Text("Player O",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 12, 235, 42),) ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("$score1",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 18, 22, 242),)),
          Text("$score2",style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 18, 22, 242),)),
        ],
      ),
      Container(height: 60,
        child: IconButton(onPressed: reset, icon:Icon(Icons.cleaning_services),iconSize: 40, ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.redAccent),
        ),
      Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container( //11
              child: ElevatedButton(
                onPressed: oneone, 
                child: Text("$one_1",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                ),
              decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.black),
            ),
            height: 80,
            width: 80,
           ),
             Container( //12
              child: ElevatedButton(
                onPressed: onetwo, 
                child: Text("$one_2",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                ),
            decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.black),
              
            ),
            height: 80,
            width: 80,
           ),
             Container( //13
             child: ElevatedButton(
                onPressed: onethree, 
                child: Text("$one_3",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                ),
              decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.black)
            ),
            height: 80,
            width: 80,
           ),
          ],
        ),
      ),
      Row(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
  
           Container( //21
           child: ElevatedButton(
              onPressed: twoone, 
              child: Text("$two_1",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              ),
                decoration: BoxDecoration(
            border: Border.all(width: 2,color: Colors.black)
          ),
          height: 80,
          width: 80,
         ),
           Container( //22
            child:ElevatedButton(
              onPressed: twotwo, 
              child: Text("$two_2",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              ),
              decoration: BoxDecoration(
            border: Border.all(width: 2,color: Colors.black)
          ),
          height: 80,
          width: 80,
         ),
           Container( //23
           child:ElevatedButton(
              onPressed: twothree, 
              child: Text("$two_3",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              ),
                decoration: BoxDecoration(
            border: Border.all(width: 2,color: Colors.black)
          ),
          height: 80,
          width: 80,
         ),
        ],
      ),
      Row(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
  
           Container( //31
            child:ElevatedButton(
              onPressed: threeone, 
              child: Text("$three_1",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              ),
                decoration: BoxDecoration(
            border: Border.all(width: 2,color: Colors.black)
          ),
          height: 80,
          width: 80,
         ),
           Container( //32
           child:ElevatedButton(
              onPressed: threetwo, 
              child: Text("$three_2",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              ),
                decoration: BoxDecoration(
            border: Border.all(width: 2,color: Colors.black)
          ),
          height: 80,
          width: 80,
         ),
           Container( //33
            child:ElevatedButton(
              onPressed: threethree, 
              child: Text("$three_3",style:TextStyle(fontSize: 40,color: Colors.black,) ,),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              ),
               decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(width: 2,color: Colors.black87))
          ),
          height: 80,
          width: 80,
         ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top:40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("$winner",style: TextStyle(fontSize: 50,color: Colors.green),),
        ],),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           IconButton(onPressed: clear, icon: Icon(Icons.delete,size: 80,)) ,
          ],
        ),
      )
    ],
    
  ),
    );
  }
}
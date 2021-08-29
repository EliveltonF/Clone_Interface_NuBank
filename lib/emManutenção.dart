import 'package:flutter/material.dart';

class PaginaManutencao extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [Icon(Icons.question_answer, color: Colors.grey)],
        leading: Icon(
          Icons.keyboard_arrow_left_outlined,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
      ),
      body:Center(child:
          Container(
            height: 360,
            width: 360,
            decoration:
                BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
           
          child:Center(child:Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text('Em Obras',style: TextStyle(fontSize: 30),),Icon(Icons.construction)],),),),),
          );
        
      
  }
}

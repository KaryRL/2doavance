import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Dos.dart';
import 'Tres.dart';

void main(){
  runApp((MaterialApp(
    home:Cinco(),
  )));
}

class Cinco extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar:AppBar(
            title:Text('Primero')

        ),
        body: Stack(
          children: [
            fondo,
            Column(
              children:[
                titleSection,
                imagenm,
                Row(
                  children: [
                    FlatButton(
                      child:Text('Alimentar'),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Dos())),
                    ),
                    FlatButton(
                      child:Text('Ignorar'),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Tres())),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}


Widget titleSection = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                'Gatito Path',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              'Los gatos han aceptado tu disculpa, junto con tu vida, despues de todo, ojo por ojo diente por diente',

              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget imagenm = Container(

  child: Image(
    image: AssetImage('assets/gatotriste.jpg'),
    width:300.0,
    height: 250.0,
  ),
);



Widget fondo = Container(

  decoration: new BoxDecoration(
      gradient: new LinearGradient(
          colors:[
            Color.fromRGBO(235, 233, 250,100),
            Color.fromRGBO(255,127,197,100)
          ],
          begin: const FractionalOffset(1.4, .01),
          end: const FractionalOffset(1.0, 1.5)
      )
  ),
);
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Cinco.dart';
import 'Cuatro.dart';
import 'Dos.dart';
import 'Tres.dart';

void main(){
  runApp((MaterialApp(
    home:Dos(),
  )));
}

class Dos extends StatelessWidget{
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
                      child:Text('No negociamos con terroristas'),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Cuatro())),
                    ),
                    FlatButton(
                      child:Text('Disculparte'),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Cinco())),
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
              'Al acercarte para alimentar al gato este se a asustado, brincando de golpe, golpeandose con algo que inexplicablemente estaba ahi y mientras este cae muerto, recuerdas que nnunca fuiste bueno con los animales'
                  ' queriendo o no, los gatos del mundo han visto esto como una ofenza inimaginable, iniciando una guerra entre la humanidad y los gatos, la humnaidad y sus lideres te elijen como embajador'
                  ' o como sacrificio y te mandan a tratar las cosas por medio del dialogo',

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
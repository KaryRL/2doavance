import 'Seis.dart';
import 'Siete.dart';
import 'package:flutter/material.dart';


void main(){
  runApp((MaterialApp(
    home:Tres(),
  )));
}

class Tres extends StatelessWidget{
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
                      child:Text('Dejar de usar esta app y descargar Grindr/Tinder'),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Seis())),
                    ),
                    FlatButton(
                      child:Text('Consumirte en tus pensamientos negativos'),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Siete())),
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
              'Pasas de largo ignorando al gatito tierno, te angustia la idea de que habra pasado con el pobre animal, dejas de comer, repruebas la uni, terminas con tu pareja, te corren del trabajo, y vives infeliz 10 años hasta que por fin contemplas la idea'
              ' de poner fin a tu sufrimiento',
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
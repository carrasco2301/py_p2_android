import 'package:flutter/material.dart';

void main() => runApp(CarrascoApp());

class CarrascoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mi empresa',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        //ruta de ventanas
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/empresa": (BuildContext context) => Empresa(),
          "/productos": (BuildContext context) => Productos(),
          "/contacto": (BuildContext context) => Contacto(),
        }, //fin de routes
        home: Inicio()); //fin de material
  } //fin de widget
} //fin de la clase carrascoApp

class Empresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Empresa CDCM"),
      ),
      body: Center(
        child: Text("Seccion Empresa"),
      ), //fin del body
    ); //fin de scaffold
  } //fin del widget Empresa
} //fin de clase empresa

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Productos CDCM"),
      ),
      body: Center(
        child: Text("Seccion Productos"),
      ), //fin del body
    ); //fin de scaffold
  } //fin del widget productos
} //fin de clase productos

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Contacto CDCM"),
      ),
      body: Center(
        child: Text("Seccion Contacto"),
      ), //fin del body
    ); //fin de scaffold
  } //fin del widget contacto
} //fin de clase contacto

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 130, bottom: 10, right: 10, left: 10),
        decoration: BoxDecoration(color: Colors.cyan, image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/carrasco2301/Mis_Imagenes/main/vacunas-consejos-peru.jpg"), alignment: Alignment.topCenter)), //fin  de la caja
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/inicio");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              "INICIO",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w900),
                            ),
                          ), //center
                        ), //fin del sizedbox
                      ), //fin de boton inicio
                    ) // fin del padding
                  ], // fin de widget[]
                ), //fin columna c1 interna
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/empresa");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("EMPRESA", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ), //fin r1 columna 2
              ], //fin del widget[]
            ), //fin de fila 1
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/productos");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("PRODUCTOS", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ), //r2 columna 1
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/contacto");
                        },
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text("CONTACTO", textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    )
                  ],
                ), //fin de r2 columna 2
              ],
            ), //fin de r2
          ], //fin del widget []
        ), //fin de columna
      ), //fin de container
    ); //fin de scaffold
  } //fin del widget inicio
} //fin de clase inicio

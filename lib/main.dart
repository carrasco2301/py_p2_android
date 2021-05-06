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
      ), //fin de container
    ); //fin de scaffold
  } //fin del widget inicio
} //fin de clase inicio


import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScrollPage extends StatelessWidget {

    final estiloTitulo = TextStyle( fontSize: 17.0, fontWeight: FontWeight.bold );
    final estilosubTitulo = TextStyle( fontSize: 15.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(context),
          _pagina3(context)


        ],
        ),
        
    );
  }

  Widget _pagina1(){
    return Stack(
      children: <Widget>[
        //_colorFondo(),
        //_imagenFondo(),
        _fondoApp2(),
        _textos(),

      ],
    );
  }


  /*Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108,192,218,1),
    );
  }

   Widget _imagenFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/lavanderia.jpeg'),
        fit: BoxFit.cover,
      ),
    );
  }
  */

   Widget _fondoApp2(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );


    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      )
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );

  }

    Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );


    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      )
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );

  }

  Widget _textos(){
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('Lavanderia', style: estiloTexto),
          Text('Rápida', style: estiloTexto,),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.blue,)
        ],
      ),
    );
  }

  Widget _textos2(){

    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.blue,)
        ],
      ),
    );
  }



  Widget _pagina2( BuildContext context ){

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp2(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos2(),
                _botonesRedondeados2()
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _crearImagen() {
      return Container(
              width: double.infinity,
              child: Image(
              image: NetworkImage('https://www.hoerrschaudt.com/wp-content/uploads/2019/11/McGovern_Landing.jpg'),
              height: 200.0,
              fit: BoxFit.cover,
            ),
      );
  }

  Widget _crearTitulo(){
   return SafeArea(
        child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[

                  Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Lavanderia Rápida', style: estiloTitulo,),
                        SizedBox(height: 7.0),
                        Text('Lavamos su ropa', style: estilosubTitulo,)
                      ],
                      ),
                  ),

                    Icon(Icons.star, color: Colors.red, size: 30.0),
                    Text('41', style: TextStyle( fontSize: 20.0 ))

                ],
                ),
            ),
   );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion( Icons.call, 'CALL' ),
        _accion( Icons.near_me, 'ROUTE' ),
        _accion( Icons.share, 'Share' ),

        

      ],
    );
  }

  Widget _accion(IconData icon, String texto) {

    return Column(
          children: <Widget>[
            Icon( icon, color: Colors.blue, size: 40.0, ),
            SizedBox(height: 5.0,),
            Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ), )
          ],
        );

  }


  Widget _crearTexto() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Dirección: Jr. Jorge Chavez 1154 - Breña \n\nTeléfono: 966167314', 
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 20.0, color: Colors.blue),
        ),
      ),
    );
  }
    
  }


  /*Widget _botonBienvenido(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: () {
            
          },
        ),
        
        
      ),
      
    );
  }
  */

  Widget _pagina3(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp2(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }


    Widget _fondoApp2(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );


    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      )
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );

  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Lavanderia Rápida', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Servicios especiales', style: TextStyle( color: Colors.white, fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }

    Widget _titulos2() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Lavanderia Rápida', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Información', style: TextStyle( color: Colors.white, fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }

  Widget _bottomNavigationBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme
          .copyWith( caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) ) )
      ),
      child: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            icon: Icon( Icons.calendar_today, size: 30.0 ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.bubble_chart, size: 30.0 ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.supervised_user_circle, size: 30.0 ),
            title: Container()
          ),
        ],
      ),
    );

  }

  Widget _botonesRedondeados2() {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.blue, FontAwesomeIcons.gamepad, 'Dirección: Jr. Jorge Chavez 1154' ),

          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.pinkAccent, Icons.business_center, 'Teléfono: 9966167314' ),
          ]
        ),
      ],
    );

    

  }


  Widget _botonesRedondeados() {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.blue, Icons.thumb_up, 'Lavado por kilo' ),
            _crearBotonRedondeado( Colors.purpleAccent, Icons.web_asset, 'Lavado por cesto' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.pinkAccent, Icons.business_center, 'Ternos' ),
            _crearBotonRedondeado( Colors.orange, Icons.fiber_new, 'Sábanas' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.blueAccent, Icons.home, 'Cortinas' ),
            _crearBotonRedondeado( Colors.green, Icons.pets, 'Zapatillas' ),
          ]
        ),
      ],
    );

    

  }

  Widget _crearBotonRedondeado( Color color, IconData icono, String texto ) {
 
 
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 5.0, sigmaY: 5.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 5.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon( icono, color: Colors.white, size: 30.0 ),
              ),
              Text( texto , style: TextStyle( color: color )),
              SizedBox( height: 5.0 )
            ],
          ),
 
        ),
      ),
    );
  }
  




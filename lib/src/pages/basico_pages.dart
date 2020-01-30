import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle( fontSize: 17.0, fontWeight: FontWeight.bold );
  final estilosubTitulo = TextStyle( fontSize: 15.0, color: Colors.grey );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),



        ],
        ),
        )
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
                        Text('Imagen con mucho pasto', style: estiloTitulo,),
                        SizedBox(height: 7.0),
                        Text('Pasto verdoso', style: estilosubTitulo,)
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
          'Velit anim cupidatat non dolore. Mollit commodo reprehenderit sunt laboris do culpa. Labore est adipisicing cillum ipsum aute.Velit anim cupidatat non dolore. Mollit commodo reprehenderit sunt laboris do culpa. Labore est adipisicing cillum ipsum aute',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class BotonAnarajando extends StatelessWidget {
  final String texto;
  final double alto;
  final double ancho;
  final Color color;

  const BotonAnarajando({
    Key key,
    @required this.texto,
    this.alto = 50.0,
    this.ancho = 150.0,
    this.color = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(100.0),
      ),
      alignment: Alignment.center,
      width: ancho,
      height: alto,
      child: Text(
        "$texto",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

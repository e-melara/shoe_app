import 'package:flutter/material.dart';

class ZapatoDescription extends StatelessWidget {
  final String titulo;
  final String descripcion;

  ZapatoDescription({@required this.titulo, @required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Text(
            this.titulo,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            this.descripcion,
            style: TextStyle(
              color: Colors.black54,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoe_app/src/widgets/custom_widgets.dart';

class AgregarCarritoBoton extends StatelessWidget {
  final double monto;
  const AgregarCarritoBoton({Key key, @required this.monto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Row(
          children: [
            SizedBox(width: 20.0),
            Text(
              "\$$monto",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            BotonAnarajando(
              texto: 'Add to Cart',
            ),
            SizedBox(width: 20.0)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoe_app/src/helpers/helpers.dart';
import 'package:shoe_app/src/widgets/custom_widgets.dart';

class ZapatosPage extends StatelessWidget {
  const ZapatosPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeDark();
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(titulo: 'For You'),
          SizedBox(height: 20.0),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ZapatoSizePreview(),
                  ZapatoDescription(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
          ),
          AgregarCarritoBoton(monto: 180.0),
        ],
      ),
    );
  }
}

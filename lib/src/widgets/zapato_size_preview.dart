import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shoe_app/src/models/zapato_model.dart';
import 'package:shoe_app/src/pages/zapato_description_page.dart';

class ZapatoSizePreview extends StatelessWidget {
  final bool fullScreen;

  const ZapatoSizePreview({
    this.fullScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!this.fullScreen) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ZapatoDescriptionPage(),
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (this.fullScreen) ? 5.0 : 20.0,
          vertical: (this.fullScreen) ? 5.0 : 0.0,
        ),
        child: Container(
          width: double.infinity,
          height: (this.fullScreen) ? 410.0 : 430.0,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: (!this.fullScreen)
                ? BorderRadius.circular(50.0)
                : BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                  ),
          ),
          child: Column(
            children: [
              _ZapatoConSombra(),
              if (!this.fullScreen) _ZapatoTallas(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final urlImage = Provider.of<ZapatoModel>(context).assetsImage;
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Hero(
            tag: 'zapato-1',
            child: Image(
              image: AssetImage(urlImage),
            ),
          )
        ],
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ZapatoCajaTalla('7'),
          _ZapatoCajaTalla('7.5'),
          _ZapatoCajaTalla('8'),
          _ZapatoCajaTalla('8.5'),
          _ZapatoCajaTalla('9'),
        ],
      ),
    );
  }
}

class _ZapatoCajaTalla extends StatelessWidget {
  const _ZapatoCajaTalla(this.talla);

  final String talla;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ZapatoModel>(context);

    return GestureDetector(
      onTap: () {
        provider.talla = this.talla;
      },
      child: Container(
        width: 45.0,
        height: 45.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:
              (this.talla == provider.talla) ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            if (this.talla == provider.talla)
              BoxShadow(
                color: Color(0xfff1a23a),
                blurRadius: 10.0,
                offset: Offset(0, 5),
              ),
          ],
        ),
        child: Text(
          "$talla",
          style: TextStyle(
            color: (this.talla == provider.talla)
                ? Colors.white
                : Color(0xffF1A23A),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

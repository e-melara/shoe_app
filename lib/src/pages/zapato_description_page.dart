import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/src/helpers/helpers.dart';
import 'package:shoe_app/src/models/zapato_model.dart';

import 'package:shoe_app/src/pages/zapatos_page.dart';
import 'package:shoe_app/src/widgets/custom_widgets.dart';

class ZapatoDescriptionPage extends StatelessWidget {
  const ZapatoDescriptionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeLigth();
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ZapatoSizePreview(fullScreen: true),
              Positioned(
                top: 80.0,
                child: FloatingActionButton(
                  onPressed: () {
                    changeDark();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ZapatosPage(),
                      ),
                    );
                  },
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 60.0,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ZapatoDescription(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _MontoByNow(),
                  _ColoresYMas()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ColoresYMas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 90,
                  child: _BotomColor(
                    Color(0xffC6D642),
                    4,
                    'assets/imgs/verde.png',
                  ),
                ),
                Positioned(
                  left: 60,
                  child: _BotomColor(
                    Color(0xffFFAD29),
                    3,
                    'assets/imgs/amarillo.png',
                  ),
                ),
                Positioned(
                  left: 30,
                  child: _BotomColor(
                    Color(0xff2099F1),
                    2,
                    'assets/imgs/azul.png',
                  ),
                ),
                _BotomColor(
                  Color(0xff364D56),
                  1,
                  'assets/imgs/negro.png',
                ),
              ],
            ),
          ),
          BotonAnarajando(
            texto: 'More related items',
            alto: 30.0,
            ancho: 170,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _BotomColor extends StatelessWidget {
  final int index;
  final Color color;
  final String urlImage;

  const _BotomColor(this.color, this.index, this.urlImage);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ZapatoModel>(context, listen: false).assetsImage =
            this.urlImage;
      },
      child: FadeInLeft(
        delay: Duration(milliseconds: this.index * 100),
        duration: Duration(milliseconds: 300),
        child: Container(
          width: 45.0,
          height: 45.0,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class _MontoByNow extends StatelessWidget {
  const _MontoByNow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Row(
          children: [
            Text(
              "\$180.0",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Bounce(
              delay: Duration(seconds: 1),
              from: 8,
              child: BotonAnarajando(
                texto: 'Buy now',
                alto: 40,
                ancho: 120,
              ),
            )
          ],
        ),
      ),
    );
  }
}

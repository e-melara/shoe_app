import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/src/models/zapato_model.dart';

import 'package:shoe_app/src/pages/zapatos_page.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => new ZapatoModel(),
        builder: (context, child) {
          return MyApp();
        },
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe App',
      debugShowCheckedModeBanner: false,
      home: ZapatosPage(),
    );
  }
}

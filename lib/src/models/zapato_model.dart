import 'package:flutter/material.dart';

class ZapatoModel with ChangeNotifier {
  String _assetsImage = 'assets/imgs/azul.png';
  String _talla = "9";

  String get talla => this._talla;
  String get assetsImage => this._assetsImage;

  set talla(String value) {
    this._talla = value;
    notifyListeners();
  }

  set assetsImage(String value) {
    this._assetsImage = value;
    notifyListeners();
  }
}

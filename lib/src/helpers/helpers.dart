import 'package:flutter/services.dart' as services;

void changeLigth() {
  services.SystemChrome.setSystemUIOverlayStyle(
    services.SystemUiOverlayStyle.light,
  );
}

void changeDark() {
  services.SystemChrome.setSystemUIOverlayStyle(
    services.SystemUiOverlayStyle.dark,
  );
}

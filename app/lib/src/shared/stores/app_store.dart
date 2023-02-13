import 'package:flutter/material.dart';

class AppStore {
  final themeMode = ValueNotifier(ThemeMode.system);

  void changeThemeMode(ThemeMode? theme) {
    if (null != theme) {
      themeMode.value = theme;
    }
  }

  void save() {
    // TODO: salvar os dados na base local
  }
}

import 'package:flutter/material.dart';

class ListinhaAppbar extends AppBar {
  ListinhaAppbar({
    super.key,
    super.actions,
    Widget title = const Text('LISTINHA'),
    super.systemOverlayStyle,
    super.leading,
  }) : super(title: title);
}

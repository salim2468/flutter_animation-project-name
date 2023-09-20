import 'package:flutter/material.dart';

void navigation(BuildContext context, Widget nextPage) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => nextPage));
}

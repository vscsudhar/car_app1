import 'package:flutter/material.dart';

import '../shared/styles.dart';

Widget buildAppBarBackground() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(back2),
        fit: BoxFit.fill,
      ),
    ),
  );
}

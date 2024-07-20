import 'package:flutter/material.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Tasbeh View",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}

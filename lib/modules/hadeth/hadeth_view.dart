import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Hadeth View",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}

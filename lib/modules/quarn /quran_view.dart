import 'package:flutter/material.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Quran View",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}

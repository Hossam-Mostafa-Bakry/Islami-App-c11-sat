import 'package:flutter/material.dart';
import 'package:islami_app_c11_sat/modules/quran/quran_view.dart';

class SuraTitleWidget extends StatelessWidget {
  final SuraData data;

  const SuraTitleWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            data.suraNumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        SizedBox(
          height: 40,
          child: VerticalDivider(
            thickness: 2,
            color: theme.primaryColor,
          ),
        ),
        Expanded(
          child: Text(
            data.suraName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}

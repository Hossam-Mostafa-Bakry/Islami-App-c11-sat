import 'package:flutter/material.dart';
import 'package:islami_app_c11_sat/modules/hadeth/hadeth_view.dart';

class HadithDetailsView extends StatelessWidget {
  static const String routeName = "hadithDetails";

  const HadithDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as HadithData;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/home_background.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(top: 10, bottom: 90, left: 30, right: 30),
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
          decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(25.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                data.title,
              ),
              Divider(
                color: theme.primaryColor,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    data.content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.6),
                  ),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

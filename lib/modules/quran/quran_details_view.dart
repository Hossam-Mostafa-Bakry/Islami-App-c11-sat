import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c11_sat/modules/quran/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "QuranDetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;

    if (content.isEmpty) loadData(data.suraNumber);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" سورة ${data.suraName}"),
                  const SizedBox(width: 15),
                  const Icon(Icons.play_circle),
                ],
              ),
              Divider(
                color: theme.primaryColor,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "{${index + 1}} ${versesList[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.6),
                  ),
                  itemCount: versesList.length,
                ),
              ),
              // Expanded(
              //   child: ListView(
              //     children: [
              //       Text(
              //         content,
              //         textAlign: TextAlign.center,
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  // sync vs async
  String content = "";
  List<String> versesList = [];

  Future<void> loadData(String suraNumber) async {
    content = await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = content.split("\n");

    setState(() {});
    print(versesList.length);
  }
}

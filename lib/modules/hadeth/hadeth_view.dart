import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c11_sat/modules/hadeth/hadith_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  final List<HadithData> hadithData = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    loadHadith();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/icons/hadith_header.png",
          scale: 3,
        ),
        const Divider(),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyLarge,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadithDetailsView.routeName,
                  arguments: hadithData[index],
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  hadithData[index].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> loadHadith() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> allHadithContent = content.split("#");

    for (int i = 0; i < allHadithContent.length; i++) {
      setState(() {
        String singleHadith = allHadithContent[i].trim();

        int titleLength = singleHadith.indexOf("\n");

        const string = 'dartlang';
        var result = string.substring(1); // 'artlang'
        result = string.substring(1, 4); // 'art

        String title = singleHadith.substring(0, titleLength);
        String content = singleHadith.substring(titleLength + 1);

        HadithData data = HadithData(
          title: title,
          content: content,
        );
        hadithData.add(data);
      });
    }
  }
}

class HadithData {
  final String title;
  final String content;

  HadithData({
    required this.title,
    required this.content,
  });
}

import 'package:flutter/material.dart';
import 'package:islami_app_c11_sat/modules/quran/quran_details_view.dart';
import 'package:islami_app_c11_sat/modules/quran/widgets/sura_title_widget.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  final List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/icons/quran_header.png",
        ),
        Divider(
          color: theme.primaryColor,
          height: 10,
          indent: 10,
          endIndent: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text(
                "رقم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
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
                "إسم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            )
          ],
        ),
        Divider(
          color: theme.primaryColor,
          height: 10,
          indent: 10,
          endIndent: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  QuranDetailsView.routeName,
                  arguments: SuraData(
                    suraName: suraNames[index],
                    suraNumber: "${index + 1}",
                  ),
                );
              },
              child: SuraTitleWidget(
                data: SuraData(
                  suraName: suraNames[index],
                  suraNumber: "${index + 1}",
                ),
              ),
            ),
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}

class SuraData {
  final String suraName;
  final String suraNumber;

  SuraData({
    required this.suraName,
    required this.suraNumber,
  });
}

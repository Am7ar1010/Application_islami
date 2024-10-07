import 'package:application_testing/ui/teps/quran%20tep/items_suraName.dart';
import 'package:application_testing/ui/teps/quran%20tep/sura_Items.dart';
import 'package:application_testing/ui/teps/quran%20tep/sura_details.dart';
import 'package:flutter/material.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Image.asset("assets/images/quran_header_icn.png"),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "رقم السروة ",
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50, child: VerticalDivider()),
            Expanded(
              child: Text(
                "اسم السورة",
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const Divider(),
        Expanded(
          flex: 7,
          child: ListView.builder(
            itemCount: 114,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SuraDetails.routName,
                    arguments: SuraDetailsFiles(
                        detailsSuraName: ItemsSuraName.suraNames[index],
                        detailsSuraNumber: "${index + 1}"));
              },
              child: SuraItems(
                  suraName: ItemsSuraName.suraNames[index],
                  suraNumber: "${index + 1}"),
            ),
          ),
        ),
      ],
    );
  }
}

class SuraDetailsFiles {
  final String detailsSuraName;
  final String detailsSuraNumber;

  SuraDetailsFiles(
      {required this.detailsSuraName, required this.detailsSuraNumber});
}
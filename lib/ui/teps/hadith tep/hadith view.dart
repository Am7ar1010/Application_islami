import 'package:application_testing/ui/teps/hadith%20tep/hadith_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadithContent> hadithListView = [];
  @override
  Widget build(BuildContext context) {
    if (hadithListView.isEmpty) readFiles();
    var theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Image.asset("assets/images/hadith_header.png"),
        ),
        const Divider(),
        Text(
          "الاحاديث",
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        const Divider(),
        Expanded(
          flex: 7,
          child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        HadithDetails.routName,
                        arguments: HadithContent(
                            title: hadithListView[index].title,
                            content: hadithListView[index].content),
                      );
                    },
                    child: Text(
                      hadithListView[index].title,
                      style: theme.textTheme.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
              separatorBuilder: (context, index) => const Divider(
                    indent: 50,
                    endIndent: 50,
                  ),
              itemCount: hadithListView.length),
        ),
      ],
    );
  }

  readFiles() async {
    var titel = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadith = titel.split("#");
    for (int i = 0; i < allHadith.length; i++) {
      String singleHadith = allHadith[i].trim();
      int indexFristLine = singleHadith.indexOf("\n");
      String title = singleHadith.substring(0, indexFristLine);
      String content = singleHadith.substring(indexFristLine + 1);
      HadithContent hadithContentList =
          HadithContent(title: title, content: content);
      hadithListView.add(hadithContentList);
      setState(() {});
    }
  }
}

class HadithContent {
  final String title;
  final String content;

  HadithContent({required this.title, required this.content});
}

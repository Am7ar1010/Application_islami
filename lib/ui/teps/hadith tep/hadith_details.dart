import 'package:application_testing/ui/teps/hadith%20tep/hadith%20view.dart';
import 'package:flutter/material.dart';

class HadithDetails extends StatefulWidget {
  static const String routName = "Hadith";

  const HadithDetails({super.key});

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadithContent;
    var theme = Theme.of(context);
    double height = MediaQuery.of(context).size.height;
    double wight = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Islami"),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: height * 0.04, horizontal: wight * 0.08),
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.02, horizontal: wight * 0.04),
                  width: double.infinity,
                  height: height * 0.8,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            args.title,
                            style: theme.textTheme.titleSmall,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: wight * 0.04,
                          ),
                          const Icon(Icons.play_circle),
                        ],
                      ),
                      const Divider(
                        indent: 40,
                        endIndent: 40,
                      ),
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) => Text(
                                  args.content,
                                  style: theme.textTheme.bodySmall,
                                  textAlign: TextAlign.center,
                                ),
                            separatorBuilder: (context, index) => const Divider(
                                  endIndent: 10,
                                  indent: 10,
                                ),
                            itemCount: 1),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

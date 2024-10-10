import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counter = 0;

  int azkarIndex = 0;
  double angle = 0.0;

  List<String> azkar = [
    "سبحان الله",
    "الحمد الله",
    "  الله اكبر ",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: height * 0.08),
      alignment: Alignment.center,
      child: Column(children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                top: -30,
                child: Image.asset(
                    width: width * 0.6,
                    height: height * 0.10,
                    "assets/images/head of seb7a.png")),
            Transform.rotate(
                angle: angle,
                child: Image.asset(
                    width: width * 0.60, "assets/images/body of seb7a.png")),
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Text(
          "عدد التسبيحات",
          style: theme.textTheme.titleMedium!
              .copyWith(color: theme.colorScheme.onPrimary),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.04),
          alignment: Alignment.center,
          width: width * 0.18,
          height: height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: theme.colorScheme.primary.withOpacity(0.6),
          ),
          child: Text(
            counter.toString(),
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            //minimumSize: Size(100, 8)
          ),
          onPressed: () {
            if (counter == 33) {
              counter = 0;
              if (azkarIndex == azkar.length - 1) {
                azkarIndex = 0;
              } else {
                azkarIndex++;
              }
            } else {
              counter++;
            }
            angle = angle + 20;
            setState(() {});
          },
          child: Text(
            azkar[azkarIndex],
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}

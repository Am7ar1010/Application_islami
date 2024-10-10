import 'package:application_testing/ui/teps/setting%20tep/language_bottom_sheet.dart';
import 'package:application_testing/ui/teps/setting%20tep/theme_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: height * 0.08, horizontal: width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.languageSetting,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.02),
            margin: EdgeInsets.symmetric(horizontal: width * 0.06),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: theme.colorScheme.primary, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.language_en,
                  style: theme.textTheme.titleMedium,
                  textAlign: TextAlign.start,
                ),
                GestureDetector(
                    onTap: () {
                      ShowLanguageBottomSheet(context);
                    },
                    child: Icon(
                      Icons.arrow_drop_down,
                      weight: width * 0.01,
                      color: theme.colorScheme.primary,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Text(
            AppLocalizations.of(context)!.modeSetting,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.02),
            margin: EdgeInsets.symmetric(horizontal: width * 0.06),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: theme.colorScheme.primary, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.mode_light,
                  style: theme.textTheme.titleMedium,
                  textAlign: TextAlign.start,
                ),
                GestureDetector(
                  onTap: () {
                    ShowThemeBottomSheet(context);
                  },
                  child: Icon(
                    Icons.arrow_drop_down,
                    weight: width * 0.01,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void ShowThemeBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => ThemeBottomSheet(),
  );
}

void ShowLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => LanguageBottomSheet(),
  );
}

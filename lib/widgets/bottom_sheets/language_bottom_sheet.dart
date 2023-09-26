import 'package:flutter/material.dart';
import 'package:islamic_app/model/my_them_data.dart';
import 'package:islamic_app/providers/languae_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LanguageProvider provider = Provider.of<LanguageProvider>(context);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
            color: MyThemData.primryColor,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20)),
      height: MediaQuery.of(context).size.height * .3,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.languageCode == 'en'
                          ? MyThemData.primryColor
                          : Colors.black54),
                ),
                provider.languageCode == 'en'
                    ? const Icon(
                        Icons.check,
                        color: MyThemData.primryColor,
                        size: 35,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'العربية',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.languageCode == 'en'
                          ? Colors.black54
                          : MyThemData.primryColor),
                ),
                provider.languageCode == 'en'
                    ? const SizedBox.shrink()
                    : const Icon(
                        Icons.check,
                        size: 35,
                        color: MyThemData.primryColor,
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
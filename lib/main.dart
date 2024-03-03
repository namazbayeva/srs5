import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(EasyLocalization(
    supportedLocales: [Locale('ru', 'RU'), Locale('kk', 'KZ'), Locale('en', 'US')],
    path: 'assets/translations', // путь к файлам переводов
    fallbackLocale: Locale('ru', 'RU'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Language Selection',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: LanguageSelectionPage(),
    );
  }
}

class LanguageSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale('ru', 'RU'));
              },
              child: Text('Русский'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale('kk', 'KZ'));
              },
              child: Text('Қазақша'),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale('en', 'US'));
              },
              child: Text('English'),
            ),
          ],
        ),
      ),
    );
  }
}

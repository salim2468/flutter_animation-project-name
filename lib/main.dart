import 'package:flutter/material.dart';
import 'package:flutter_animation/l10n/L10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool isEng = true;
  onPress() {
    setState(() {
      isEng = !isEng;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // locale: const Locale('es'),

      locale: isEng ? const Locale('en') : const Locale('es'),
      supportedLocales: L10n.all,
      home: MyWidget(
        isEng: isEng,
        onPress: onPress,
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key, required this.isEng, required this.onPress});
  void Function()? onPress;
  bool isEng;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: widget.onPress,
              child: Text('Change'),
              // isEng ? const Text("To Spanish") : const Text("To English"),
            ),
            Text(AppLocalizations.of(context)!.localeName),
          ],
        ),
      ),
    );
  }
}

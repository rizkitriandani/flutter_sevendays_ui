import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobile_first_wrapper/mobile_web_view.dart';
import 'package:flutter_sevendays_ui/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MobileWebView(
      backgroundColor: Colors.greenAccent,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        //PUT INSIDE MATERIAL APP
        //IMPORT responsive_framewor
        initialRoute: "/",
        routes: routes,
      ),
    );
  }
}

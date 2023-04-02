import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mehahackuser/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:mehahackuser/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:mehahackuser/src/utils/theme/theme.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());}


class App extends StatelessWidget {
  const App({Key? key}): super(key: key);

  // This widget is the root of your application.
  @override
    Widget build(BuildContext context){
    return  GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme:AppTheme.darkTheme ,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:islamic_app/services/dio_helper/dio_service.dart';
import 'package:islamic_app/src/app_root.dart';
import 'package:flutter/services.dart';
import 'package:flutter_compass/flutter_compass.dart';

void main() async {

  DioHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(AppRoot());
  });

  // BlocOverrides.runZoned(
  //   () {
  //     runApp(AppRoot());
  //   },
  //   blocObserver: MyBlocObserver(),
  // );

  //runApp(AppRoot());

}

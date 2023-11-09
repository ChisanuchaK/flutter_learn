import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp( HomeApp());
  
  // FlutterNativeSplash.remove();
}



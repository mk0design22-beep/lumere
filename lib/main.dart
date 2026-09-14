import 'package:flutter/material.dart';
import 'package:lumere_abaya/app/app.dart';
import 'package:lumere_abaya/core/storage/local_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(const LumereApp());
}

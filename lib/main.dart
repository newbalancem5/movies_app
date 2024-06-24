import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/app.dart';
import 'package:movies_app/service/api_service.dart';

void setup() {
  GetIt.instance.registerLazySingleton<ApiService>(() => ApiService());
}

Future<void> main() async {
  await dotenv.load(fileName: "assets/.env");
  setup();
  runApp(const MyApp());
}

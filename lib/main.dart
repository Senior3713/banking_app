import 'package:banking_app/app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

final String incomes = "incomes";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox(incomes);


  runApp(const BankingApp());
}
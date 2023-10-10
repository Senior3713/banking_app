import 'package:banking_app/main.dart';
import 'package:hive_flutter/hive_flutter.dart';

class IncomesDB {
  List incomesList = [];

  final incomesBox = Hive.box(incomes);

  void defaultData() {
    incomesList = [];
  }

  /// Load Data
  void loadData() {
    incomesList = incomesBox.get("IncomesList");
  }

  /// Load Data
  void updateData() {
    incomesBox.put("IncomesList", incomesList);
  }
}
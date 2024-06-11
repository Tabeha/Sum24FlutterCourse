import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static const _waterIntakeKey = 'Intake';

  Future<void> saveWaterIntake(double intake) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setDouble(_waterIntakeKey, intake);
  }

  Future<double> getWaterIntake() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(_waterIntakeKey) ?? 0.0;
  }
}

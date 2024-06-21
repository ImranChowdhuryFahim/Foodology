import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class DarkModeCubit extends Cubit<bool> {
  final Box settingsBox;

  DarkModeCubit(this.settingsBox) : super(false) {
    bool isDarkMode = settingsBox.get('isDarkMode', defaultValue: false);
    emit(isDarkMode);
  }

  void toggleDarkMode() {
    bool newValue = !state;
    settingsBox.put('isDarkMode', newValue);
    emit(newValue);
  }
}

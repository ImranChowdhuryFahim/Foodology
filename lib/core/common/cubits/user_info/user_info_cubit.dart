import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class UserInfoCubit extends Cubit {
  final Box userInfoBox;

  UserInfoCubit(this.userInfoBox) : super(null) {
    String? user = userInfoBox.get('userInfo', defaultValue: null);
    emit(user);
  }

  void logIn(String userDetails) {
    final userInfo = userDetails;
    userInfoBox.put('userInfo', userInfo);
    emit(userInfo);
  }

  void logOut() {
    userInfoBox.put('userInfo', null);
    emit(null);
  }
}

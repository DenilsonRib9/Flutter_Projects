import 'package:flutter/cupertino.dart';
import 'package:project01/services/prefs_services.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _password;
  setPass(String value) => _password = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 2));
    inLoader.value = false;
    if (_login == 'admin' && _password == '123') {
      PrefsServices.save(_login!);
      return true;
    }
    return false;
  }
}

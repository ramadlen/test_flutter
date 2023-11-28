import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
// import '../view/logindto_view.dart';

class LogindtoController extends State<LogindtoView> {
  static late LogindtoController instance;
  late LogindtoView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? username;
  String? password;

  doLogin() async {
    bool isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    showLoading();

    bool isSuccess = await AuthService()
        .login(email: email!, username: username!, password: password!);
    hideLoading();

    if (!isSuccess) {
      showInfoDialog("Password atau email salah!");
      return;
    }

    Get.offAll(MainNavigationView());
  }
}

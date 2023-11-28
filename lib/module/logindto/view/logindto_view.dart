import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LogindtoView extends StatefulWidget {
  const LogindtoView({Key? key}) : super(key: key);

  Widget build(context, LogindtoController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QTextField(
                label: "Email",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  controller.email = value;
                  controller.username = value;
                },
              ),
              QTextField(
                label: "Password",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  controller.password = value;
                },
              ),
              QButton(
                label: "Login",
                onPressed: () => controller.doLogin(),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LogindtoView> createState() => LogindtoController();
}

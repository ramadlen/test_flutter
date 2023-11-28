
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/registerdto_controller.dart';

class RegisterdtoView extends StatefulWidget {
  const RegisterdtoView({Key? key}) : super(key: key);

  Widget build(context, RegisterdtoController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registerdto"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
      ),
    );
  }

  @override
  State<RegisterdtoView> createState() => RegisterdtoController();
}
    
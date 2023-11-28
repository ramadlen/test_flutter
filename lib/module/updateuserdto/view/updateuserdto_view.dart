
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/updateuserdto_controller.dart';

class UpdateuserdtoView extends StatefulWidget {
  const UpdateuserdtoView({Key? key}) : super(key: key);

  Widget build(context, UpdateuserdtoController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Updateuserdto"),
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
  State<UpdateuserdtoView> createState() => UpdateuserdtoController();
}
    
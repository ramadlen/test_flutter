import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/createuserdto_controller.dart';

class CreateuserdtoView extends StatefulWidget {
  const CreateuserdtoView({Key? key}) : super(key: key);

  Widget build(context, CreateuserdtoController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        actions: [
          CircleAvatar(
            child: Text(
              "${controller.users.length}",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
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
  State<CreateuserdtoView> createState() => CreateuserdtoController();
}

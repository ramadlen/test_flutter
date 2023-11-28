import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: const [],
      ),
      body: ListView.builder(
        itemCount: 3,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: const NetworkImage(
                  "https://i.ibb.co/QrTHd59/woman.jpg",
                ),
              ),
              title: const Text("Jessica Doe"),
              subtitle: const Text("Programmer"),
            ),
          );
        },
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Badge(
                label: Text(
                  "6",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(MdiIcons.chatQuestion),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Badge(
                label: Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Token",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${AuthService.token}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Builder(builder: (context) {
                List About = [
                  {
                    "label": "Create",
                    "view": CreateuserdtoView(),
                  }
                ];
                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0,
                    crossAxisCount: 3,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var Abouts = About[index];
                    return InkWell(
                        onTap: () => Get.to(Abouts["view"]),
                        child: Container(
                          color: Colors.orange,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Abouts["label"],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ));
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}

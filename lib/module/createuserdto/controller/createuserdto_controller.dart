import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/profile_service/profile_service.dart';
import '../view/createuserdto_view.dart';

class CreateuserdtoController extends State<CreateuserdtoView> {
  static late CreateuserdtoController instance;
  late CreateuserdtoView view;

  @override
  void initState() {
    instance = this;
    getUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List users = [];
  getUsers() async {
    users = await ProfileService().getProfile();
    print(users);
    setState(() {});
  }
}

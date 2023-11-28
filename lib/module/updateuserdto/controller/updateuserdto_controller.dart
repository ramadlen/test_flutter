
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/updateuserdto_view.dart';

class UpdateuserdtoController extends State<UpdateuserdtoView> {
    static late UpdateuserdtoController instance;
    late UpdateuserdtoView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/registerdto_view.dart';

class RegisterdtoController extends State<RegisterdtoView> {
    static late RegisterdtoController instance;
    late RegisterdtoView view;

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
        
    
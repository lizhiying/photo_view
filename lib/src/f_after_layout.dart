
import 'package:flutter/widgets.dart';

//mixin AfterLayoutMixin<T extends StatefulWidget> on State<T> {
abstract class AfterLayoutMixin<T extends StatefulWidget> extends State<T> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => afterFirstLayout(context));
  }

  void afterFirstLayout(BuildContext context);
}
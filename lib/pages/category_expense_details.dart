import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import '../utilities/colors.dart';
import '../widgets/chart_category_details.dart';

class CategoryExpenseDetails extends StatelessWidget {
  const CategoryExpenseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(FluentIcons.dismiss_24_regular),
            color: grey,
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Card(
              child: Row(
            children: const [ChartCategoryDetails()],
          )),
        ],
      )),
    );
  }
}

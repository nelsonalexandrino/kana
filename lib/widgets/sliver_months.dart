import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../utilities/defaults.dart';
import '../providers/home_report_provider.dart';

class SliverMonths extends SliverPersistentHeaderDelegate {
  SliverMonths({required this.tabController, required this.scrollController});

  final TabController tabController;
  final ScrollController scrollController;

  //final int selectedIndex;

  // SliverMonths({required this.selectedIndex});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
        boxShadow: [shadow2],
      ),
      child: Months(tabController, scrollController),
    );
  }

  @override
  double get maxExtent => 45;

  @override
  double get minExtent => 45;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class Months extends StatefulWidget {
  const Months(this.tabController, this.scrollController, {super.key});

  final TabController tabController;
  final ScrollController scrollController;

  @override
  State<Months> createState() => _MonthsState();
}

class _MonthsState extends State<Months> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      isScrollable: true,
      //indicator: BoxDecoration(shape: BoxShape.rectangle, color: Colors.orange),
      indicatorColor: Colors.transparent,
      onTap: (value) {
        context.read<ReportProvider>().setSelectedMonth(value);
        widget.scrollController.animateTo(value * 600,
            duration: const Duration(milliseconds: 500), curve: Curves.ease);
      },
      tabs: [
        ...List.generate(
          yearMonths.length,
          (index) => Tab(
            child: Text(
              yearMonths.elementAt(index),
              style: TextStyle(
                color: context.watch<ReportProvider>().selectedMonth == index
                    ? Colors.black
                    : grey,
                fontWeight:
                    context.watch<ReportProvider>().selectedMonth == index
                        ? FontWeight.bold
                        : null,
              ),
            ),
          ),
        )
      ],
    );

    // SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: [
    //       ...List.generate(
    //         yearMonths.length,
    //         (index) => TextButton(
    //           onPressed: () {
    //             context.read<ReportProvider>().setSelectedMonth(index);
    //           },
    //           style: TextButton.styleFrom(
    //               foregroundColor:
    //                   context.watch<ReportProvider>().selectedMonth == index
    //                       ? Colors.black
    //                       : grey),
    //           child: Text(
    //             yearMonths.elementAt(index),
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}

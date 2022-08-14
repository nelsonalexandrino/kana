import 'package:flutter/material.dart';

class MonthsExpenses extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Text('Janeiro'),
          Text('Fevereiro'),
          Text('Março'),
          Text('Abril'),
          Text('Maio'),
          Text('Junho'),
          Text('Julho'),
          Text('Agosto'),
          Text('Setembro'),
          Text('Outubro'),
          Text('Novembro'),
          Text('Dezembro'),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/category_provider.dart';
import '../utilities/defaults.dart';

class CategoryReportItem extends StatelessWidget {
  const CategoryReportItem({
    Key? key,
    this.trending,
    this.trendingTendency,
    this.moneySpent,
    this.totalOfExpenses,
    this.categoryID,
  }) : super(key: key);

  final IconData? trending;
  final String? trendingTendency;
  final String? moneySpent;
  final int? totalOfExpenses;
  final String? categoryID;

  @override
  Widget build(BuildContext context) {
    var category = context
        .watch<CategoryProvider>()
        .categories
        .firstWhere((element) => element.id == categoryID);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: category.color ?? backgroundColorNumbersAndIcons,
              shape: BoxShape.circle,
            ),
            child: Icon(
              category.icon,
              color: category.color != null ? Colors.white : grey,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.name,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      trending!,
                      size: 18,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '$trendingTendency than last month',
                      style: const TextStyle(fontSize: 11),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  moneySpent!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '$totalOfExpenses gastos',
                  style: const TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 11),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

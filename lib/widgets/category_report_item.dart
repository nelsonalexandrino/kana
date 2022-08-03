import 'package:flutter/material.dart';

class CategoryReportItem extends StatelessWidget {
  const CategoryReportItem({
    Key? key,
    this.categoryName,
    this.trending,
    this.trendingTendency,
    this.moneySpent,
    this.categoryIcon,
    this.totalOfExpenses,
  }) : super(key: key);

  final String? categoryName;
  final IconData? trending;
  final String? trendingTendency;
  final String? moneySpent;
  final IconData? categoryIcon;
  final int? totalOfExpenses;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Icon(
              categoryIcon,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryName!,
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

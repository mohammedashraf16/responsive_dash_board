import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                 updateIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: AllExpensesItem(
                    allExpensesItemModel: item,
                    isSelected: currentIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensesItem(
                  allExpensesItemModel: item,
                  isSelected: currentIndex == index,
                ),
              ),
            );
          }
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}

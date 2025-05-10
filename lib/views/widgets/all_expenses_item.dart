import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/inactive_and_active_all_expences_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      secondChild: InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      crossFadeState: isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),  // Adjust duration as needed
    );
  }
}
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
          textAlign: TextAlign.start,
        ),
        SizedBox(height: 16),
        LatestTransactionListView(),
      ],
    );
  }
}
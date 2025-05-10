import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: allExpensesItemModel.image,
          ),
          SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style:
                AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: Color(0xffFAFAFA)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}

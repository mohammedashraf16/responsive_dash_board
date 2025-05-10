import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});

  final String image;
  final Color? imageBackground, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackground ?? Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color:imageColor==null? Color(0xff064061):Colors.white,
        )
      ],
    );
  }
}

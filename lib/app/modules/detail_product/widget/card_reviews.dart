import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:readmore/readmore.dart';

import '../../../shared/utils/colors.dart';
import '../../../shared/utils/text.dart';

class CardReview extends StatefulWidget {
  const CardReview({super.key});

  @override
  State<CardReview> createState() => _CardReviewState();
}

class _CardReviewState extends State<CardReview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Colors.yellow, shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Ronald Richards',
                    style: AppText.blackText.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.clockOutline,
                        size: 16,
                        color: AppColors.gray,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '13 Sep, 2020',
                        style: AppText.grayText.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 12.0,
              ),
              const Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '4.8',
                        style: AppText.blackText.copyWith(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'rating',
                        style: AppText.blackText.copyWith(
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 13,
                        color: Color(0xffFF981F),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Icon(
                        Icons.star,
                        size: 13,
                        color: Color(0xffFF981F),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Icon(
                        Icons.star,
                        size: 13,
                        color: Color(0xffFF981F),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Icon(
                        Icons.star,
                        size: 13,
                        color: Color(0xffFF981F),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Icon(
                        Icons.star,
                        size: 13,
                        color: Color(0xffFF981F),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          ReadMoreText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
            style: AppText.grayText.copyWith(fontSize: 15),
            colorClickableText: AppColors.black,
            trimLines: 4,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
          ),
        ],
      ),
    );
  }
}

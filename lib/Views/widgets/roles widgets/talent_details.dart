import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kamp_app/Constants/colors.dart';
import 'package:kamp_app/Constants/fontstyles.dart';
import 'package:kamp_app/Constants/globalvariables.dart';

class TalentDetails extends StatelessWidget {
  const TalentDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // NAME
              Text('James Joshua',
                  style:
                      FontStyles.headerMedium2.copyWith(color: Colors.white)),
              //EXPERIENCE
              Container(
                padding: GlobalVariables.mediumButtonPadding(context),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(children: [
                  const Icon(
                    Ionicons.git_compare_outline,
                    size: 15,
                    color: Colors.white,
                  ),
                  Text('  3 Years+',
                      style:
                          FontStyles.buttonSmall.copyWith(color: Colors.white))
                ]),
              )
            ],
          ),
          // ROLE
          Text(
            'Software Engineer',
            style: FontStyles.bodyLarge.copyWith(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                    padding: GlobalVariables.mediumButtonPadding(context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.primaryColor),
                    child: Text('Connect',
                        style: FontStyles.bodyLarge
                            .copyWith(color: Colors.white))),
              ),
              // ICONS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.star_outline,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.close,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.refresh,
                        color: Colors.white,
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

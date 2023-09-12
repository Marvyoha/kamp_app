import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:kamp_app/Constants/colors.dart';
import 'package:kamp_app/Constants/fontstyles.dart';
import 'package:kamp_app/Constants/globalvariables.dart';

import '../../widgets/formbutton.dart';

class CriteriaFounder extends StatefulWidget {
  const CriteriaFounder({super.key});

  @override
  State<CriteriaFounder> createState() => _CriteriaFounderState();
}

class _CriteriaFounderState extends State<CriteriaFounder> {
  bool isGridViewVisible = false;

  @override
  Widget build(BuildContext context) {
    List<String> industry = [
      'Health',
      'Travel',
      'Real Estate',
      'Shipping & Logistics',
      'Arts',
      'Media',
      'Tech'
    ];

    return Scaffold(
      body: Padding(
        padding: GlobalVariables.formPadding(context),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(children: [
              Text(
                'Let\'s get you matched',
                textAlign: TextAlign.center,
                style: FontStyles.headerMedium2,
              ),
              GlobalVariables.spacing,
              GlobalVariables.spacing,
              Text(
                'What industry do you operate in',
                style: FontStyles.bodyLarge,
              ),
              GlobalVariables.spacing,
              Center(
                child: SizedBox(
                  height: isGridViewVisible ? 200 : 100,
                  width: double.infinity,
                  child: MasonryGridView.builder(
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: industry.length,
                    itemBuilder: (context, index) {
                      final isBig = industry[index].length > 5;

                      return Visibility(
                        visible: isGridViewVisible ? true : index < 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.containerColor,
                            ),
                            child: Center(
                              child: Text(
                                industry[index],
                                style: FontStyles.bodyLarge,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isGridViewVisible = !isGridViewVisible;
                  });
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('See More',
                      style: FontStyles.bodyMedium
                          .copyWith(color: AppColors.tertiaryColor)),
                ),
              ),
              ExpansionTile(
                title: Text(
                  'What do you need the investment for:',
                  style: FontStyles.bodyLarge,
                ),
                children: [
                  ListTile(
                    title: const Text('Option 1'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Option 2'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Option 3'),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Total amount needed :',
                  style: FontStyles.bodyLarge,
                ),
                children: [
                  ListTile(
                    title: const Text('Option 1'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Option 2'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Option 3'),
                    onTap: () {},
                  ),
                ],
              ),
              GlobalVariables.spacing,
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    'Skip for now',
                    style: FontStyles.bodyMedium
                        .copyWith(color: AppColors.tertiaryColor),
                  ),
                ),
              ),
            ]),
            FormButton(
              label: 'Complete Application',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

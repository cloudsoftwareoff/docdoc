import 'package:doctorine/core/helpers/spaces.dart';
import 'package:doctorine/core/widgets/text_title_with_text_button.dart';
import 'package:doctorine/features/home/widgets/doctor_blue_container.dart';
import 'package:doctorine/features/home/widgets/doctor_specialty_list.dart';
import 'package:doctorine/features/home/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              const HomeViewAppBar(),
              const DoctorsBlueContainer(),
              const VerticalSpace(height: 24),
              TextTitleWithTextButton(
                titleText: "Doctor Specialty",
                buttonText: "See All",
                onPressed: () {},
              ),
              const VerticalSpace(height: 16),
              const DoctorSpecialtyList(),
              const VerticalSpace(height: 16),
              TextTitleWithTextButton(
                titleText: "Recommendation Doctor",
                buttonText: "See All",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

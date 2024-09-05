import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/features/home/ui/doctor_list/doctros_bloc_builder.dart';
import 'package:docdoc_app/features/home/ui/doctors_blue_container.dart';
import 'package:docdoc_app/features/home/ui/doctors_speciality_see_all.dart';
import 'package:docdoc_app/features/home/ui/home_top_bar.dart';
import 'package:flutter/material.dart';

import 'ui/specializations_list/specializations_bloc_builder.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0,),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(20),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const SpecializationsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),

            ],
          ),
        ),
      ),
    );
  }
}

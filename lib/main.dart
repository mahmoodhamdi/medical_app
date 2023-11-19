import 'package:flutter/material.dart';
import 'package:medical_app/core/routing/app_router.dart';
import 'package:medical_app/medical_care_app.dart';

void main() {
  runApp(MedicalCare(
    appRouter: AppRouter(),
  ));
}

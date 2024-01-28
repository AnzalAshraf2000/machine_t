import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/dashboard/dashboard_cubit.dart';

import 'dashboard.dart';


void main() =>
    runApp(BlocProvider(
      create: (context) => DashboardCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashBoard(),
      ),
    ));


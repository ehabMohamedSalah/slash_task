import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/presentation/homeViewModel.dart';

import 'core/observer.dart';
import 'myapp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();//law fe ay haga future m3molha await lazm tkhls abl mdkhol 3ala al runapp
  Bloc.observer = MyBlocObserver();
  // Use cubits...
   runApp(
      BlocProvider(
      create: (context) => HomeViewModel(),

      child: MyApp()));
}

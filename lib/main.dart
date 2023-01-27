import 'package:cat_fact_clean/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/catfact/presentation/cubit/catfact_cubit.dart';
import 'features/catfact/presentation/pages/catfact/catfact_page.dart';

void main() async {
  await register();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(create: (context) => CatfactCubit()..getCatFact(), child: const CatfactPage()),
    );
  }
}

import 'package:cat_fact_clean/features/catfact/presentation/cubit/catfact_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatfactPage extends StatelessWidget {
  const CatfactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CatfactCubit, CatfactState>(
        builder: (context, state) {
          if (state is CatfactInProgress) {
            return const CircularProgressIndicator();
          } else if (state is CatfactSuccess) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(state.response.fact),
              ),
            );
          } else if (state is CatfactFailure) {
            return Text(state.exception.toString());
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

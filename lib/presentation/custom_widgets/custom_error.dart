import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Ops!',
            style:
                TextStyle(color: AppColors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            'Não foi possivel conectar ao servidor, verifique se está conectado a internet.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.black, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}

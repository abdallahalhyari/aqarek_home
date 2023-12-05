import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widget/loaders/loader.dart';
import '../../../../widget/text/custom_text_view.dart';
import '../bloc/home_page_bloc.dart';

// class FamilyHistoryFHxScreen extends StatelessWidget {
//   const FamilyHistoryFHxScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     FamilyHistoryFhxBloc familyHistoryFhxBloc =
//         context.read<FamilyHistoryFhxBloc>()..add(LoadFamilyHistoryFhxEvent());
//     return Scaffold(
//         appBar: AppBar(title: const Text('Family History FHx')),
//         body: BlocBuilder<FamilyHistoryFhxBloc, FamilyHistoryFhxState>(
//             builder: (context, state) {
//           return state is! FamilyHistoryFhxInitial
//               ? ListView.builder(
//                   physics: const BouncingScrollPhysics(),
//                   itemCount: familyHistoryFhxBloc.familyHistoryFHx.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ListTile(
//                         title: TextViewCustom(
//                             tr: false,
//                             text: familyHistoryFhxBloc
//                                 .familyHistoryFHx[index].familyHistory!));
//                   })
//               : const Loader();
//         }));
//   }
// }

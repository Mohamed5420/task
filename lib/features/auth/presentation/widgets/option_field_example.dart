// import 'package:flutter/material.dart';
// import 'package:task/core/localization/translate.dart';
// import 'package:task/core/widgets/base_form_option/base_form_option.dart';
// import 'package:task/core/widgets/base_form_option/local_options_requester.dart';
// import 'package:task/core/widgets/base_form_option/widgets/base_options_display_widget.dart';
// import 'package:task/core/widgets/base_form_option/widgets/option_item_widget.dart';
// import 'package:task/core/widgets/base_form_option/widgets/selectable_option_item_widget.dart';
// import 'package:task/features/auth/domain/models/user_domain_model.dart';
//
// class OptionFieldExample extends StatefulWidget {
//   const OptionFieldExample({super.key});
//
//   @override
//   State<OptionFieldExample> createState() => _OptionFieldExampleState();
// }
//
// class _OptionFieldExampleState extends State<OptionFieldExample> {
//   List<UserDomainModel> selectedUsers = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return BaseFormOption<UserDomainModel>(
//       hintText: Translate.of(context).failureActions,
//       bottomSheetTitle: Translate.of(context).failureActions,
//       showSearch: false,
//       isMultiple: false,
//       showDecoration: true,
//       optionsRequester: LocalOptionsRequester(
//         valueMainTitleGetter: (value) => value?.firstName ?? "",
//         options: _getOptions(),
//       ),
//       selectedItems: selectedUsers,
//       selectedOptionBuilder: (actions) {
//         return BaseOptionsDisplayWidget<UserDomainModel>(
//           titleGetter: (value) => value.firstName,
//           selectedOptions: actions,
//         );
//       },
//       optionItemBuilder: (user, isSelected) {
//         return SelectableOptionItemWidget(
//           isSelected: isSelected,
//           optionItemWidget: OptionItemWidget(
//             title: user.firstName,
//           ),
//         );
//       },
//       valueIdGetter: (value) => value?.id,
//       valueMainTitleGetter: (value) => value?.firstName,
//       onSaveValue: (actions, iMultiple) {
//         setState(() {
//           selectedUsers = actions ?? [];
//         });
//       },
//       onClearPressed: () {
//         setState(() {
//           selectedUsers = [];
//         });
//       },
//     );
//   }
//
//   List<UserDomainModel> _getOptions() => [
//         UserDomainModel(email: "", firstName: "Mohamed", id: "1", lastName: "", phone: ""),
//         UserDomainModel(email: "", firstName: "Elsaied", id: "2", lastName: "", phone: ""),
//       ];
// }

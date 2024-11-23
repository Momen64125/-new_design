import 'package:flutter/material.dart';
import 'package:untitled4/widgets/status_widget.dart';
import 'package:untitled4/theme/font_system/app_fonts.dart';
import 'package:untitled4/theme/sizes_manager.dart';
import 'package:untitled4/theme/styles_manager.dart';
import 'package:untitled4/theme/widget_manager.dart';



class ActionItemWidget extends StatelessWidget {
  const ActionItemWidget({
    super.key,
    this.onTap,
    required this.action,
    this.showFullData = false,
    required this.status,
  });

  final bool showFullData;
  final Function()? onTap;
  final String action;
  final String status;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(Sizes.size8),
      ),
      child: ListTile(
              dense: true,
              onTap: onTap,
              leading: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.photo_size_select_actual_rounded),
                  Text(

                    'action.name',
                    style: StylesManager.bold(
                      fontSize: AppFonts.font.large,
                      textOverflow: showFullData ? null : TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: Sizes.size4*6,
                horizontal: Sizes.size16,
              ),
              // title: Text(
              //
              //           'action.name',
              //       style: StylesManager.bold(
              //         fontSize: AppFonts.font.large,
              //         textOverflow: showFullData ? null : TextOverflow.ellipsis,
              //       ),
              // ),
              // subtitle: action.description.en.trim().isNotEmpty
              //     ? Consumer(
              //         builder: (context, ref, child) {
              //           return Text(
              //             ref
              //                 .watch(localizationControllerProvider.notifier)
              //                 .getTextLocalization(action.description),
              //             overflow: showFullData ? null : TextOverflow.ellipsis,
              //             style: StylesManager.regular(
              //               fontSize: AppFonts.font.small.sp,
              //             ),
              //           );
              //         },
              //       )
              //     : null,
             trailing:StatusWidget(status: 'in progress'),


             ),
    ).paddingAll(Sizes.size10)

    ;

  //            trailing: Icon(
  //             Icons.verified_outlined,
  //             color: action.actionResults.isNotEmpty
  //                 ? AppColors.colors.successColor
  //                 : Theme.of(context).cardColor,
  //           ),
  //         ).paddingOnly(bottom: Sizes.size10.h)

   }
}

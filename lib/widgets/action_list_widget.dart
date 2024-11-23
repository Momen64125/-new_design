import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled4/theme/image_widget.dart';
import 'package:untitled4/widgets/sumbit_action_succsufl.dart';
import 'package:untitled4/theme/font_system/app_fonts.dart';
import 'package:untitled4/theme/sizes_manager.dart';
import 'package:untitled4/theme/styles_manager.dart';
import 'package:untitled4/theme/widget_manager.dart';


import 'action_details_widget.dart';
import 'action_item_widget.dart';
import 'custom_text_field.dart';

class ActionList extends StatelessWidget {
  final int scheduleId;
  final List actionList;
  final String status;
  const ActionList({
    required this.status,
    super.key,
    required this.scheduleId,
    required this.actionList,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('All Tasks',
            style: StylesManager.bold(fontSize: AppFonts.font
                .large),).paddingOnly(
              top: Sizes.size10, bottom: Sizes.size10


          ).paddingAll(Sizes.size10),

          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: Sizes.size10),
            itemBuilder: (context, index) {
              final actionItem = actionList[index];
              return ActionItemWidget(
                status: status,
                action: actionItem,
                onTap: () async {
                   await

                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    isScrollControlled: true,
                    builder: (ctx) {
                      return ImageWidget(actionItem: actionItem);

                      // return ActionDetailsWidget(
                      //   status: status,
                      //   action: actionItem,
                      //   scheduleId: scheduleId,
                      // );
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

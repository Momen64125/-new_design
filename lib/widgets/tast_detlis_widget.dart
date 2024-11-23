
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/widgets/precentage_widget.dart';
import 'package:untitled4/widgets/status_widget.dart';
import 'package:untitled4/theme/color_system/app_colors.dart';
import 'package:untitled4/theme/font_system/app_fonts.dart';
import 'package:untitled4/theme/sizes_manager.dart';
import 'package:untitled4/theme/styles_manager.dart';

class TaskDetailsWidget extends StatelessWidget {
  final String status;
  final int doneActionsCount;
  final int totalActionsCount;
  final String task;

  const TaskDetailsWidget({
    super.key,
    required this.task,
    required this.status,
    required this.doneActionsCount,
    required this.totalActionsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),

        constraints: BoxConstraints(
          minWidth: 210.0,
          maxWidth: 350.0,
          minHeight: 100.0,
          maxHeight: 200.0,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // حالة المهمة
                StatusWidget(status: status),
                const SizedBox(height: 10.0),
                // تفاصيل المهمة مع النسبة المئوية
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'clean',
                          style: TextStyle(color:Colors.black),
                        ),
                        Text(
                          'cafe',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    PercentageWidget(
                      color: Colors.green,
                      percent: 0.5,
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                // عدد المهام المكتملة
                Text(
                  '$totalActionsCount/$doneActionsCount Tasks completed',
                  style: const TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

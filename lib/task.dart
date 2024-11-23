import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/widgets/action_list_widget.dart';
import 'package:untitled4/widgets/precentage_widget.dart';
import 'package:untitled4/widgets/tast_detlis_widget.dart';
import 'package:untitled4/theme/sizes_manager.dart';
import 'package:untitled4/theme/widget_manager.dart';

import 'model.dart';
class task extends StatelessWidget {
    task({super.key, required this.scheduleDetailsModel});
  ScheduleDetailsModel scheduleDetailsModel ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Detelis'),
      ),
     body:  Column(

       children: [
         TaskDetailsWidget(task: scheduleDetailsModel.task, status: scheduleDetailsModel.status, doneActionsCount: scheduleDetailsModel.doneActionsCount, totalActionsCount: scheduleDetailsModel.totalActionsCount,),


         ActionList(status: scheduleDetailsModel.status, scheduleId: scheduleDetailsModel.id, actionList: ['take a cup of coffee' , 'take a cup of coffee', 'take a cup of coffee'],),
       ],
     ),
    ).paddingAll
        (Sizes.size14);
  }
}

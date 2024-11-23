class ScheduleDetailsModel {
  int id=0;
 int? userId=0;
   int? teamId=0;
   int? projectId=0;
   String status="in progress";
   DateTime? end;
   String? projectname=" in progress";

  final DateTime? start;
 int doneActionsCount=6;
  int totalActionsCount=8;
 String task="clean";


  ScheduleDetailsModel(
      this.id,
      this.userId,
      this.teamId,
      this.projectId,
      this.status,
      this.end,
      this.start,
      this.doneActionsCount,
      this.totalActionsCount,
      this.task,
      this.projectname);



}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/widgets/sumbit_action_succsufl.dart';
import 'package:untitled4/theme/color_system/app_colors.dart';
import 'package:untitled4/theme/font_system/app_fonts.dart';
import 'package:untitled4/theme/sizes_manager.dart';
import 'package:untitled4/theme/styles_manager.dart';
import 'package:untitled4/theme/widget_manager.dart';
import 'package:untitled4/widgets/app_button.dart';
import 'package:untitled4/widgets/camer_widget.dart';

import '../widgets/custom_text_field.dart';

class ImageWidget extends StatelessWidget {
  final String actionItem;
  const ImageWidget({super.key, required this.actionItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(actionItem,style: StylesManager.bold(fontSize: AppFonts.font.large),).paddingOnly(top:Sizes.size10,bottom: Sizes.size10),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              } , child: Icon(Icons.close)),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Expanded(
          //       child: Container(
          //         constraints: const BoxConstraints(
          //           minWidth: 40.0,
          //           minHeight: 70.0,
          //         ),
          //         child: ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.blueAccent,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(8.0), // زاوية مستديرة
          //             ),
          //             padding: const EdgeInsets.all(10.0), // تباعد داخلي
          //           ),
          //           onPressed: () {
          //             // قم بإضافة حدث الضغط هنا
          //           },
          //           child: const Icon(
          //             Icons.camera_alt_rounded,
          //             size: 24.0, // حجم الأيقونة
          //             color: Colors.white, // لون الأيقونة
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
         CameraWidget(),
          Text('Note',style: StylesManager.bold(fontSize: AppFonts.font.large),).paddingOnly(top:Sizes.size10,bottom: Sizes.size10),
          CustomTextInputField(

            maxLines: 5,
            autoFocus: false,
            // controller: _controller,
            label: 'Enter your note',
            type: TextInputType.multiline,
            textInputAction: TextInputAction.newline,

          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height:  Sizes.size48,

              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.size8),
                color: Colors.blueAccent,
              ) ,
              child: ElevatedButton(


                style:ElevatedButton.styleFrom(

                  backgroundColor: Colors.blueAccent,
                ),


                onPressed: (){
                Navigator.pop(context);

                showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    isScrollControlled: true,
                    builder: (ctx) {
                      return SumbitActionSuccsufl();});
                    },
                 child: Container(

                        child: Text('sumbit',),),),
            ),
          ),


        ],
      ),
    );
  }
}

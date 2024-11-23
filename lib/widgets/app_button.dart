import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../theme/font_system/app_fonts.dart';
import '../theme/sizes_manager.dart';
import '../theme/styles_manager.dart';

class AppDefaultButton  {

  final Function()? onPressed;
  final String text;

  const AppDefaultButton(this.text, {

    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height:  Sizes.size48,
      width: 250,
      child: ElevatedButton(
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          padding: EdgeInsets.zero,
          //tapTargetSize: MaterialTapTargetSize.shrinkWrap,

          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius:
                 BorderRadius.circular(Sizes.size8),

          ),
        ),
        child:Text(text ,),
        onPressed: onPressed,
      ),
    );
  }
}


import 'package:untitled4/theme/sizes_manager.dart';



import 'styles_manager.dart';
import 'font_system/app_fonts.dart';
import 'color_system/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ThemeManager {
  ThemeManager._();
  static ThemeData getLightMode() {
    AppColors.i.themeMode = ThemeMode.light;
    return ThemeData(
      useMaterial3: true,
      splashColor: Colors.transparent,
      cardColor: Colors.grey.shade300,
      fontFamily: AppFonts.font.fontName,
      visualDensity: VisualDensity.standard,
      disabledColor: AppColors.colors.secondaryColor,
      primaryColorLight: AppColors.colors.appBarColor,
      dialogBackgroundColor: AppColors.colors.scaffoldBackgroundColor,
      scaffoldBackgroundColor: AppColors.colors.scaffoldBackgroundColor,
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.light,
        cardColor: AppColors.colors.appBarColor,
        errorColor: AppColors.colors.errorColor,
        accentColor: AppColors.colors.strokeColor,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        primarySwatch: getMaterialColor(AppColors.colors.strokeColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.colors.blackColor,
          backgroundColor: AppColors.colors.scaffoldBackgroundColor,
          surfaceTintColor: AppColors.colors.scaffoldBackgroundColor,
        ),
      ),
      dividerTheme: DividerThemeData(
        color: AppColors.colors.scaffoldBackgroundColor,
      ),
      datePickerTheme: DatePickerThemeData(
        elevation: 0.0,
        shadowColor: AppColors.colors.appBarColor,
        dividerColor: AppColors.colors.secondaryColor,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        surfaceTintColor: AppColors.colors.scaffoldBackgroundColor,
        dayOverlayColor:
            WidgetStatePropertyAll(AppColors.colors.strokeColor),
      ),
      timePickerTheme: TimePickerThemeData(
        elevation: 0.0,
        dayPeriodTextColor: AppColors.colors.blackColor,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        dialBackgroundColor: AppColors.colors.appBarColor,
        dayPeriodBorderSide: BorderSide(color: AppColors.colors.appBarColor),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: AppColors.colors.blackColor),
        titleTextStyle: StylesManager.bold(
          color: AppColors.colors.blackColor,
          fontSize: AppFonts.font.xLarge,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        isDense: true,
        fillColor: AppColors.colors.appBarColor,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: StylesManager.regular(
          color: AppColors.colors.secondaryColor,
          fontSize: 14,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.colors.secondaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.colors.primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.colors.errorColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.colors.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      listTileTheme: ListTileThemeData(
        enableFeedback: true,
        iconColor: AppColors.colors.blackColor,
        textColor: AppColors.colors.blackColor,
        tileColor: AppColors.colors.appBarColor,
        visualDensity: VisualDensity.standard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 0.0,
        modalElevation: 0.0,
        clipBehavior: Clip.antiAlias,
        dragHandleColor: Colors.grey.shade300,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        surfaceTintColor: AppColors.colors.scaffoldBackgroundColor,
        dragHandleSize: Size(Sizes.size48, Sizes.size4),
        constraints: BoxConstraints(
          minWidth: 20,
          maxHeight: 30,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.size20),
            topRight: Radius.circular(Sizes.size20),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 10.0,
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFFFFFF),
        selectedItemColor: Color(0xFF000000),
        unselectedItemColor: Color(0xFF525252).withOpacity(0.5),
        selectedLabelStyle:
            StylesManager.regular(fontSize: AppFonts.font.medium),
        unselectedLabelStyle:
            StylesManager.medium(fontSize: AppFonts.font.medium),
      ),
    );
  }

  static ThemeData getDarkMode() {
    AppColors.i.themeMode = ThemeMode.dark;
    return ThemeData(
      useMaterial3: true,
      cardColor: Colors.grey.shade800,
      splashColor: Colors.transparent,
      fontFamily: AppFonts.font.fontName,
      visualDensity: VisualDensity.standard,
      primaryColorLight: AppColors.colors.appBarColor,
      disabledColor: AppColors.colors.secondaryColor,
      dialogBackgroundColor: AppColors.colors.scaffoldBackgroundColor,
      scaffoldBackgroundColor: AppColors.colors.scaffoldBackgroundColor,
      primarySwatch: getMaterialColor(AppColors.colors.scaffoldBackgroundColor),
      colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        cardColor: AppColors.colors.appBarColor,
        errorColor: AppColors.colors.errorColor,
        accentColor: AppColors.colors.strokeColor,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        primarySwatch: getMaterialColor(AppColors.colors.strokeColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.colors.blackColor,
          backgroundColor: AppColors.colors.scaffoldBackgroundColor,
          surfaceTintColor: AppColors.colors.scaffoldBackgroundColor,
        ),
      ),
      dividerTheme: DividerThemeData(
        color: AppColors.colors.scaffoldBackgroundColor,
      ),
      datePickerTheme: DatePickerThemeData(
        shadowColor: AppColors.colors.appBarColor,
        dividerColor: AppColors.colors.secondaryColor,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        surfaceTintColor: AppColors.colors.scaffoldBackgroundColor,
        dayOverlayColor:
            WidgetStatePropertyAll(AppColors.colors.strokeColor),
      ),
      timePickerTheme: TimePickerThemeData(
        elevation: 0.0,
        dayPeriodTextColor: AppColors.colors.blackColor,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        dialBackgroundColor: AppColors.colors.appBarColor,
        dayPeriodBorderSide: BorderSide(color: AppColors.colors.appBarColor),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: AppColors.colors.blackColor),
        titleTextStyle: StylesManager.bold(
          color: AppColors.colors.blackColor,
          fontSize: AppFonts.font.large,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        isDense: true,
        fillColor: AppColors.colors.appBarColor,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: StylesManager.regular(
          color: AppColors.colors.secondaryColor,
          fontSize: 14,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.colors.secondaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.colors.primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.colors.errorColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.colors.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.colors.errorColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      listTileTheme: ListTileThemeData(
        enableFeedback: true,
        iconColor: AppColors.colors.blackColor,
        textColor: AppColors.colors.blackColor,
        tileColor: AppColors.colors.appBarColor,
        visualDensity: VisualDensity.standard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular( Sizes.size8),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 0.0,
        modalElevation: 0.0,
        clipBehavior: Clip.antiAlias,
        dragHandleColor: Colors.grey.shade800,
        backgroundColor: AppColors.colors.scaffoldBackgroundColor,
        surfaceTintColor: AppColors.colors.scaffoldBackgroundColor,
        dragHandleSize: Size(Sizes.size48, Sizes.size4),
        constraints: BoxConstraints(
          minWidth: 10,
          maxHeight: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.size20),
            topRight: Radius.circular(Sizes.size20),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 10.0,
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF18181B),
        selectedItemColor: Color(0xFFFFFFFF),
        unselectedItemColor: Color(0xFFABD7FF).withOpacity(0.5),
        selectedLabelStyle:
            StylesManager.regular(fontSize: AppFonts.font.medium),
        unselectedLabelStyle:
            StylesManager.medium(fontSize: AppFonts.font.medium),
      ),
    );
  }
}

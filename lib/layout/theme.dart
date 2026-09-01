import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Beyond/layout/colors.dart';

class Themes {
  Themes._();

  // .****************
  // Theme - Light
  // .****************
  static final TextTheme _textThemeLight = TextTheme(
    displayLarge: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w300,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 96,
    ),
    displayMedium: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w300,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 60,
    ),
    displaySmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 48,
    ),
    headlineMedium: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 18,
    ),
    headlineSmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 24,
    ),
    titleLarge: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 20,
    ),
    titleMedium: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 16,
    ),
    titleSmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 14,
    ),
    bodyLarge: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w600,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 16,
    ),
    bodyMedium: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 16,
    ),
    labelLarge: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 14,
    ),
    bodySmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 12,
    ),
    labelSmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: AppColorsLight.text,
      decorationThickness: 0,
      fontSize: 10,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColorsLight.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColorsLight.background,
      centerTitle: false,
      elevation: 0,
      titleSpacing: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: _textThemeLight.headlineMedium,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: AppColorsLight.background,
      ),
      iconTheme: IconThemeData(color: AppColorsLight.text),
    ),
    popupMenuTheme: PopupMenuThemeData(
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => _textThemeLight.bodyMedium,
      ),
      color: AppColorsLight.background,
      elevation: 8,
    ),
    tabBarTheme: TabBarThemeData(
      indicatorColor: AppColorsLight.primary,
      labelStyle: _textThemeLight.bodyLarge!.apply(
        color: AppColorsLight.primary,
      ),
      unselectedLabelStyle: _textThemeLight.bodyLarge,
    ),
    bottomAppBarTheme: const BottomAppBarThemeData(
      color: AppColorsLight.primary,
      surfaceTintColor: AppColorsLight.secondary,
    ),
    textTheme: _textThemeLight,
    colorScheme: ColorScheme.light(
      primary: AppColorsLight.primary,
      secondary: AppColorsLight.secondary,
      tertiary: AppColorsLight.success,
      onTertiary: AppColorsLight.warning,
      error: AppColorsLight.error,
      inversePrimary: AppColorsLight.info,
      surface: AppColorsLight.background,
      onSurface: AppColorsLight.card,
      onInverseSurface: AppColorsLight.text,
      onSurfaceVariant: AppColorsLight.text.withAlpha(0x50),
      outline: AppColorsLight.cardPinBackground,
      outlineVariant: AppColorsLight.cardCursor,
    ),
    cardTheme: CardThemeData(
      color: AppColorsLight.card,
      surfaceTintColor: Color(0xFF9CC7FF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    iconTheme: const IconThemeData(color: AppColorsLight.text, size: 20),
    tooltipTheme: TooltipThemeData(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      showDuration: const Duration(seconds: 5),
      triggerMode: TooltipTriggerMode.tap,
      preferBelow: false,
      textStyle: _textThemeLight.bodySmall!.apply(
        color: AppColorsLight.background,
      ),
      decoration: BoxDecoration(
        color: AppColorsLight.text,
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColorsLight.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      titleTextStyle: TextStyle(color: AppColorsLight.text, fontSize: 20),
      contentTextStyle: TextStyle(color: AppColorsLight.text),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.resolveWith(
        (states) => AppColorsLight.card,
      ),
      side: BorderSide(color: AppColorsLight.primary),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith(
        (states) => AppColorsLight.text,
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColorsLight.text,
      textColor: AppColorsLight.text,
    ),
    dividerTheme: DividerThemeData(color: AppColorsLight.text),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      fillColor: Colors.transparent,
      filled: true,
      suffixIconColor: AppColorsLight.text,
      labelStyle: TextStyle(color: AppColorsLight.text),
      hintStyle: TextStyle(
        color: AppColorsLight.text.withValues(alpha: 0.4),
        fontSize: 12,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColorsLight.text),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColorsLight.text),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColorsLight.text),
        borderRadius: BorderRadius.circular(5),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      prefixStyle: TextStyle(fontSize: 16),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColorsLight.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorsLight.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorsLight.primary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
  );

  // .****************
  // Theme - Dark
  // .****************
  static final TextTheme _textThemeDark = TextTheme(
    displayLarge: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w300,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 96,
    ),
    displayMedium: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w300,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 60,
    ),
    displaySmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 48,
    ),
    headlineMedium: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 18,
    ),
    headlineSmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 24,
    ),
    titleLarge: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 20,
    ),
    titleMedium: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 16,
    ),
    titleSmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 14,
    ),
    bodyLarge: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w600,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 16,
    ),
    bodyMedium: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 16,
    ),
    labelLarge: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 14,
    ),
    bodySmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 12,
    ),
    labelSmall: GoogleFonts.roboto(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      color: AppColorsDark.text,
      decorationThickness: 0,
      fontSize: 10,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColorsDark.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColorsDark.background,
      centerTitle: false,
      elevation: 0,
      titleSpacing: 0,
      scrolledUnderElevation: 0,
      titleTextStyle: _textThemeDark.headlineMedium,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: AppColorsDark.background,
      ),
      iconTheme: IconThemeData(color: AppColorsDark.text),
    ),
    popupMenuTheme: PopupMenuThemeData(
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => _textThemeDark.bodyMedium,
      ),
      color: AppColorsDark.background,
      elevation: 8,
    ),
    tabBarTheme: const TabBarThemeData(
      labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      indicatorColor: AppColorsDark.primary,
    ),
    bottomAppBarTheme: const BottomAppBarThemeData(
      color: AppColorsDark.primary,
      surfaceTintColor: AppColorsDark.secondary,
    ),
    textTheme: _textThemeDark,
    colorScheme: ColorScheme.dark(
      primary: AppColorsDark.primary,
      secondary: AppColorsDark.secondary,
      tertiary: AppColorsDark.success,
      onTertiary: AppColorsDark.warning,
      error: AppColorsDark.error,
      inversePrimary: AppColorsDark.info,
      surface: AppColorsDark.background,
      onSurface: AppColorsDark.card,
      onInverseSurface: AppColorsDark.text,
      onSurfaceVariant: AppColorsDark.text.withAlpha(0x50),
      outline: AppColorsDark.cardPinBackground,
      outlineVariant: AppColorsDark.cardCursor,
    ),
    cardTheme: CardThemeData(
      color: AppColorsDark.card,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    iconTheme: const IconThemeData(color: AppColorsDark.text, size: 20),
    tooltipTheme: TooltipThemeData(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      showDuration: const Duration(seconds: 5),
      triggerMode: TooltipTriggerMode.tap,
      preferBelow: false,
      textStyle: _textThemeDark.bodySmall!.apply(
        color: AppColorsDark.background,
      ),
      decoration: BoxDecoration(
        color: AppColorsDark.text,
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColorsDark.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      titleTextStyle: TextStyle(color: AppColorsDark.text, fontSize: 20),
      contentTextStyle: TextStyle(color: AppColorsDark.text),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.resolveWith(
        (states) => AppColorsDark.card,
      ),
      side: BorderSide(color: AppColorsDark.primary),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith(
        (states) => AppColorsDark.text,
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: AppColorsDark.text,
      textColor: AppColorsDark.text,
    ),
    dividerTheme: DividerThemeData(color: AppColorsDark.text),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      fillColor: Colors.transparent,
      filled: true,
      suffixIconColor: AppColorsDark.text,
      labelStyle: TextStyle(color: AppColorsDark.text),
      hintStyle: TextStyle(
        color: AppColorsDark.text.withValues(alpha: 0.4),
        fontSize: 12,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColorsDark.text),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColorsDark.text),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColorsDark.text),
        borderRadius: BorderRadius.circular(5),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      prefixStyle: TextStyle(fontSize: 16),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColorsDark.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorsDark.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorsDark.primary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:islamy_app/core/theme/app_colors.dart';

TextStyle titleLarge({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 28,
    fontWeight: weight ?? .bold,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

TextStyle titleMedium({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 24,
    fontWeight: weight ?? .bold,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

TextStyle titleSmall({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 20,
    fontWeight: weight ?? .bold,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

TextStyle labelLarge({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 20,
    fontWeight: weight ?? .normal,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

TextStyle labelMedium({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 16,
    fontWeight: weight ?? .normal,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

TextStyle labelSmall({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 14,
    fontWeight: weight ?? .normal,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

TextStyle bodyLarge({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 16,
    fontWeight: weight ?? .normal,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

TextStyle bodyMedium({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 14,
    fontWeight: weight ?? .normal,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

TextStyle bodySmall({
  double? size,
  FontWeight? weight,
  Color? color,
  String? family,
}) {
  return TextStyle(
    fontSize: size ?? 12,
    fontWeight: weight ?? .normal,
    color: color ?? AppColors.white,
    fontFamily: family ?? "Janna",
    decoration: TextDecoration.none,
  );
}

import 'package:app_monitors/app/core/storage/theme_storage.dart';
import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MonitorThemeData {
  Color get bgBase {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.base;
      case ThemeMode.light:
        return AppColors.lightBase;
      default:
        return AppColors.base;
    }
  }

  Color get bgElevated1 {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.bgElevated1;
      case ThemeMode.light:
        return AppColors.bgLightElevated1;
      default:
        return AppColors.bgElevated1;
    }
  }

  Color get bgElevated2 {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.bgElevated2;
      case ThemeMode.light:
        return AppColors.bgLightElevated2;
      default:
        return AppColors.bgElevated2;
    }
  }

  Color get bgElevated3 {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.bgElevated3;
      case ThemeMode.light:
        return AppColors.bgLightElevated3;
      default:
        return AppColors.bgElevated3;
    }
  }

  Color get bgElevated4 {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.bgElevated4;
      case ThemeMode.light:
        return AppColors.bgLightElevated4;
      default:
        return AppColors.bgElevated3;
    }
  }

  Color get cuperThumbColor {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.bgElevated4;
      case ThemeMode.light:
        return AppColors.lightBase;
      default:
        return AppColors.bgElevated3;
    }
  }

  Color get bgCuper {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.bgElevated1;
      case ThemeMode.light:
        return AppColors.bgLightElevated2;
      default:
        return AppColors.bgElevated1;
    }
  }

  Color get primaryActive {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.primaryActive;
      case ThemeMode.light:
        return AppColors.primaryLightActive;
      default:
        return AppColors.primaryActive;
    }
  }

  Color get primaryBlueDisable {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.primaryBlueDisable;
      case ThemeMode.light:
        return AppColors.primaryLightBlueDisable;
      default:
        return AppColors.primaryBlueDisable;
    }
  }

  Color get solidGreen {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.solidGreen;
      case ThemeMode.light:
        return AppColors.solidLightGreen;
      default:
        return AppColors.solidGreen;
    }
  }

  Color get solidRed {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.solidRed;
      case ThemeMode.light:
        return AppColors.solidLightRed;
      default:
        return AppColors.solidRed;
    }
  }

  Color get solidYellow {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.solidYellow;
      case ThemeMode.light:
        return AppColors.solidLightYellow;
      default:
        return AppColors.solidYellow;
    }
  }

  Color get solidViolet {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.solidViolet;
      case ThemeMode.light:
        return AppColors.solidLightViolet;
      default:
        return AppColors.solidViolet;
    }
  }

  Color get solidBlue {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.solidBlue;
      case ThemeMode.light:
        return AppColors.solidLightBlue;
      default:
        return AppColors.solidBlue;
    }
  }

  Color get neutral1 {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.neutral1;
      case ThemeMode.light:
        return AppColors.neutral1Light;
      default:
        return AppColors.neutral1;
    }
  }

  Color get neutral2 {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.neutral2;
      case ThemeMode.light:
        return AppColors.neutral2Light;
      default:
        return AppColors.neutral2;
    }
  }

  Color get neutral3 {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.neutral3;
      case ThemeMode.light:
        return AppColors.neutral3Light;
      default:
        return AppColors.neutral3;
    }
  }

  Color get neutral4 {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.neutral4;
      case ThemeMode.light:
        return AppColors.neutral4Light;
      default:
        return AppColors.neutral4;
    }
  }

  Color get bgDropCard {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.bgElevated1;
      case ThemeMode.light:
        return AppColors.bgLightElevated2;
      default:
        return AppColors.bgElevated1;
    }
  }

  Color get whiteColor {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.white;
      case ThemeMode.light:
        return AppColors.neutral1Light;
      default:
        return AppColors.white;
    }
  }

  Color get secondaryActive {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
      case ThemeMode.light:
      default:
        return AppColors.secondaryActive;
    }
  }

  //SwitchListTile
  Color get switchListTile {
    switch (ThemeStorage().theme) {
      case ThemeMode.light:
        return AppColors.neutral1Light;
      default:
        return AppColors.white;
    }
  }

  Color get textWhite {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.white;
      case ThemeMode.light:
        return AppColors.white;
      default:
        return AppColors.white;
    }
  }

  Color get bgBottomTabbar {
    switch (ThemeStorage().theme) {
      case ThemeMode.dark:
        return AppColors.bgElevated3;
      case ThemeMode.light:
        return AppColors.bgLightElevated1;
      default:
        return AppColors.bgElevated3;
    }
  }
}

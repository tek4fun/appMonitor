import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Color(0xFFFFFFFF); // Màu base
  static const Color black = Color(0xff010101);

  static const Color lightMainBackgroundColor =
      Color(0xFF1E1E1E); // Màu nền chung các form
  static const Color darkMainBackgroundColor =
      Color(0xFF1E1E1E); // Màu nền chung các form

  static const Color homeValueChangeLightMode = Color(0xffcccccc);
  static const Color homeValueChangeDarkMode = Color(0xff797979);

  static const Color buyColor = Color(0xFF337AB7); // Màu lệnh MUA
  static const Color saleColor = Color(0xFFDA3C5B); // Màu lệnh BÁN

  static const Color tradeTypeNoneColor =
      Color(0xFFf2f3f5); // Màu Nút Mua/Bán lúc chưa nhấn Mua hoặc Bán
  static const Color tradeMarkColor =
      Color(0xFF1A4F99); // Màu thương hiệu của công ty

  static const Color buttonTextColor = Color(0xFFFFFFFF); // Màu text của Button
  static const Color fixedValueColor =
      Color(0xFFA7A7A7); // Màu các ô Value dạng readonly (Ví dụ số dư khả dụng)
  static const Color popupBackgroundColor = Color(0xFF222222); // Màu nền Popup

  static const Color subHeaderBackgroundColor =
      Color(0xFF312E2C); // Màu sub header (nếu có 2 cấp header)

  static const Color closeButtonBackgroundColor =
      Color(0xFF1E1E1E); // Màu nền nút Close
  static const Color closeButtonBorderColor =
      Color(0xFFFFFFFF); // Màu border nút Close
  static const Color buttonBackgroundColor =
      Color(0xFF1A4F99); // Màu nền Button

  static const Color ceilingColor = Color(0xFFDE20DF); // Màu giá TRẦN
  static const Color basicColor = Color(0xFFE7BC26); // Màu giá THAM CHIẾU
  static const Color floorColor = Color(0xFF00A7EE); // Màu giá SÀN

  static const Color upColor = Color(0xFF08CA98); // Màu TĂNG, LÃI
  static const Color downColor = Color(0xFFF04164); // Màu GIẢM, LỖ
  static const Color noChangeColor =
      Color(0xFFE7BC26); // Màu không tăng, ko giảm, ko lãi, ko lỗ

  //Màu nháy//>
  static const Color blinkColor = Color(0x81D3D3D3); // Màu nháy nền

//Màu Tab//>
  static const Color barBackgroundColor = Color(0xFF1A4F99); // Màu nền tabbar
  static const Color barSelectedColor = Color(0xFFFFFFFF); // Màu selected tab
  static const Color barUnselectedColor =
      Color(0x80FFFFFF); // Màu unselected tab

  //Màu StatusBar//>
  static const Color statusBarColor = Color(0xFF1A4F99); // Màu status bar

  static const Color bidOfferProgressBarColor =
      Color(0x85666666); // Màu nền thể hiện % của 3 giá mua bán tốt nhất

  static const Color lightDividerGray = Color(0xffd0d0d0);
  static const Color darkDividerGray = Color(0xff393939);

  static const Color base = Color(0xFF0D1115);
  static const Color lightBase = Color(0xFFF7F7F7);
  static const Color violetBase = Color(0xFF161016);

  static const Color bgElevated1 = Color(0xFF161B22);
  static const Color bgElevated2 = Color(0xFF1D242D);
  static const Color bgElevated3 = Color(0xFF222B36);
  static const Color bgElevated4 = Color(0xFF394452);

  static const Color bgLightElevated1 = Color(0xFFFFFFFF);
  static const Color bgLightElevated2 = Color(0xFFE8E8E8);
  static const Color bgLightElevated3 = Color(0xFFDCDCDC);
  static const Color bgLightElevated4 = Color(0xFFC0C0C0);

  static const Color bgVioletElevated1 = Color(0xFF19101B);
  static const Color bgVioletElevated2 = Color(0xFF251827);
  static const Color bgvioletElevated3 = Color(0xFF251827);
  static const Color bgVioletElevated4 = Color(0xFF362A39);

  static const Color primaryActive = Color(0xFF00A7EE);
  static const Color primaryLightActive = Color(0xFF141ED2);
  static const Color primaryVioletActive = Color(0xFFAF2EFF);

  static const Color primaryDisable = Color(0xFF2F5B69);

  static const Color primaryBlueDisable = Color(0xFF26444E);
  static const Color primaryLightBlueDisable = Color(0xFFE8E8E8);
  static const Color primaryVioletBlueDisable = Color(0xFF251827);

  static const Color secondaryActive = Color(0xFFF04164);
  static const Color secondaryDisable = Color(0xFF613E45);

  static const Color secondaryGreenDisable = Color(0xFF215448);

  static const Color solidGreen = Color(0xFF08CA98);
  static const Color solidLightGreen = Color(0xFF02BD86);

  static const Color solidRed = Color(0xFFF04164);
  static const Color solidLightRed = Color(0xFFFA4C67);

  static const Color solidYellow = Color(0xFFE7BC26);
  static const Color solidLightYellow = Color(0xFFF8CD46);

  static const Color solidViolet = Color(0xFFDE20DF);
  static const Color solidLightViolet = Color(0xFFC031DB);
  static const Color solidVioletViolet = Color(0xFFAF2EFF);

  static const Color solidBlue = Color(0xFF00A7EE);
  static const Color solidLightBlue = Color(0xFF5BA1F4);

  static const Color neutral1 = Color(0xFFF8F8F8);
  static const Color neutral1Light = Color(0xFF353535);
  static const Color neutral1Violet = Color(0xFFF8F8F8);

  static const Color neutral2 = Color(0xFF9DA1A9);
  static const Color neutral2Light = Color(0xFF646464);
  static const Color neutral2Violet = Color(0xFF9A8DA0);

  static const Color neutral3 = Color(0xFF50555E);
  static const Color neutral3Light = Color(0xFFBABABA);
  static const Color neutral3Violet = Color(0xFF564A60);

  static const Color neutral4 = Color(0xFF343A43);
  static const Color neutral4Light = Color(0xFFDFDFDF);
  static const Color neutral4Violet = Color(0xFF3F3443);

  static const Color border1 = Color(0xFFEEEFF0);
  static const Color border2 = Color(0xFF9DA1A9);
  static const Color border3 = Color(0xFF50555E);
  static const Color border4 = Color(0xFF343A43);
  static const Color innerShadow = Color(0xFF394452);
  static const Color outerShadow12 = Color(0xFF0D1115);
  static const Color outerShadow6 = Color(0xFF0D1115);

  //mau tren man hinh login
  static const Color translution = Color(0x00FFFFFF);
  static const Color labelNeutral = Color(0xFF8D94A0);
  static const Color inputNeutral = Color(0xFFF8F8F8);

  //Mau chart
  static const Color inflowLager = Color(0xFF4FAA85);
  static const Color inflowMedium = Color(0xFF59BF8F);
  static const Color inflowSmall = Color(0xFF91D366);

  static const Color outflowLager = Color(0xFFCC4D5D);
  static const Color outflowMedium = Color(0xFFEE8559);
  static const Color outflowSmall = Color(0xFFE3AB53);

  static const Color colorPrimaryActive = Color(0xFF30C3F3);
  static const Color colorSolidYellow = Color(0xFFE7BC26);
  static const Color colorSolidViolet = Color(0xFFDE20DF);
  static const Color colorOrange = Color(0xFFF2994A);
  static const Color colorSolidGreen = Color(0xFF08CA98);
  static const Color colorSolidRed = Color(0xFFF04164);

  static const Color changesBackgroundColor = AppColors.bgElevated4;

  static const LinearGradient gadientGreen = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(1, 0.0),
    colors: [const Color(0xff08CA98), const Color(0xff0D1115)],
    tileMode: TileMode.repeated,
  );

  static const LinearGradient gradientLinearBlue = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [const Color(0x2041BCE4), const Color(0x00222B36)],
    // tileMode: TileMode.repeated,
  );

  static const LinearGradient gadientViolet = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(1, 0.0),
    colors: [const Color(0xFFDE20DF), const Color(0xff0D1115)],
    tileMode: TileMode.repeated,
  );

  static const LinearGradient gadientRed = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(1, 0.0),
    colors: [const Color(0xFFF04164), const Color(0xff0D1115)],
    tileMode: TileMode.repeated,
  );

  static const LinearGradient gadientYellow = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(1, 0.0),
    colors: [const Color(0xFFE7BC26), const Color(0xff0D1115)],
    tileMode: TileMode.repeated,
  );

  static const LinearGradient gadientBlue = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(1, 0.0),
    colors: [const Color(0xFF30C3F3), const Color(0xff0D1115)],
    tileMode: TileMode.repeated,
  );
}

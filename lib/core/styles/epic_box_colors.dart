import 'package:epic_story_app/core/styles/card_box_model.dart';
import 'package:epic_story_app/core/styles/hover_box_model.dart';
import 'package:flutter/material.dart';

class BoxColors {
  // Hover models
  static const HoverBoxModel hoverYellow = HoverBoxModel(
      backgroundColor: Color(0xff928214),
      shadowColor: Color(0xff6e610c),
      textColor: Color(0xfff0e9b6));
  static const HoverBoxModel hoverGreen = HoverBoxModel(
      backgroundColor: Color(0xff2c8e1e),
      shadowColor: Color(0xff175c10),
      textColor: Color(0xffb1f8d7));
  static const HoverBoxModel hoverTeal = HoverBoxModel(
      backgroundColor: Color(0xff138084),
      shadowColor: Color(0xff0c5a5d),
      textColor: Color(0xffbaf7ff));
  static const HoverBoxModel hoverBlue = HoverBoxModel(
      backgroundColor: Color(0xff285498),
      shadowColor: Color(0xff123976),
      textColor: Color(0xffc0d4f5));
  static const HoverBoxModel hoverPurple = HoverBoxModel(
      backgroundColor: Color(0xff562095),
      shadowColor: Color(0xff320665),
      textColor: Color(0xffd4c3f5));
  static const HoverBoxModel hoverPink = HoverBoxModel(
      backgroundColor: Color(0xff90105e),
      shadowColor: Color(0xff670843),
      textColor: Color(0xfff4b2db));
  static const HoverBoxModel hoverGray = HoverBoxModel(
      backgroundColor: Color(0xff575757),
      shadowColor: Color(0xff363636),
      textColor: Color(0xffd5d5d5));

  // Card color models
  static const CardBoxModel yellowPrimary = CardBoxModel(
      backgroundColor: Color(0xffe6cb83),
      shadowColor: Color(0xffb9ad4e),
      textColor: Color(0xff928214),
      hoverColor: hoverYellow);
  static const CardBoxModel limePastel = CardBoxModel(
    backgroundColor: Color(0xffF1EFBB),
    shadowColor: Color(0xffDEE683),
    textColor: Color(0xff938E14),
    hoverColor: hoverYellow,
  );
  static const CardBoxModel greenSecondary = CardBoxModel(
      backgroundColor: Color(0xff59b94d),
      shadowColor: Color(0xff2b8e1e),
      textColor: Color(0xffb1f8d7),
      hoverColor: hoverGreen);
  static const CardBoxModel tealPrimary = CardBoxModel(
      backgroundColor: Color(0xff83dbe6),
      shadowColor: Color(0xff4db5ba),
      textColor: Color(0xff138084),
      hoverColor: hoverTeal);
  static const CardBoxModel bluePrimary = CardBoxModel(
      backgroundColor: Color(0xffa1c0f2),
      shadowColor: Color(0xff4c77b9),
      textColor: Color(0xff285498),
      hoverColor: hoverBlue);
  static const CardBoxModel cardColorQuiz = CardBoxModel(
      backgroundColor: Color(0xff8ED2C9),
      shadowColor: Color(0xff4D77B9),
      textColor: Color(0xff000000),
      hoverColor: hoverBlue);
  static const CardBoxModel purplePrimary = CardBoxModel(
      backgroundColor: Color(0xffbea1f4),
      shadowColor: Color(0xff7f4db9),
      textColor: Color(0xff562095),
      hoverColor: hoverPurple);
  static const CardBoxModel pinkPrimary = CardBoxModel(
      backgroundColor: Color(0xfff4a1d4),
      shadowColor: Color(0xffb94db5),
      textColor: Color(0xff90105e),
      hoverColor: hoverPink);
  static const CardBoxModel grayDisabled = CardBoxModel(
    backgroundColor: Color(0xff8D8D8D),
    shadowColor: Color(0xff575757),
    textColor: Color(0xffD5D5D5),
    hoverColor: hoverGray,
  );
  static const CardBoxModel cekJawaban = CardBoxModel(
    backgroundColor: Color(0xff7E32AB),
    shadowColor: Color(0xff431E6A),
    textColor: Color(0xffFFFFFF),
    hoverColor: hoverPurple,
  );
  static const CardBoxModel jawabanBenar = CardBoxModel(
    backgroundColor: Color(0xff457AED),
    shadowColor: Color(0xff3E65B7),
    textColor: Color(0xffFFFFFF),
    hoverColor: hoverBlue,
  );
  static const CardBoxModel jawabanSalah = CardBoxModel(
    backgroundColor: Color(0xffA8AFC0),
    shadowColor: Color(0xff332E39),
    textColor: Color(0xff020202),
    hoverColor: hoverGray,
  );
}
